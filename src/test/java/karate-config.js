function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  karate.configure('logPrettyRequest', true); karate.configure('logPrettyResponse', true);
  if (!env) {
    env = 'dev';
  }
var config = {
	  env: env
  }
 var config = {
	  apiUrl: 'https://jsonplaceholder.typicode.com/'
  }
  return config;
}