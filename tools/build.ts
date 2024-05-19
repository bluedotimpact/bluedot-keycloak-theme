import archiver from 'archiver';
import { createWriteStream, existsSync, mkdirSync } from 'fs';

import { name } from '../package.json';

const dir = 'dist';
const file = `${name}.jar`;
const path = `${dir}/${file}`;

if (!existsSync(dir)) {
  mkdirSync(dir);
}

const output = createWriteStream(`${__dirname}/../${path}`);

const archive = archiver('zip');

archive.on('error', (error) => {
  throw error;
});

archive.pipe(output);

archive.directory('src/META-INF', 'META-INF');
archive.directory(`src/login`, `theme/${name}/login`);

archive.finalize();
