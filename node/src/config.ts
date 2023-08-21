import nconf from "nconf";

nconf.argv().
env().file({
    file: `${ process.cwd() }/config.json`
});

export default nconf;