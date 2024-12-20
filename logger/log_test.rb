require 'logger'

logger = Logger.new(STDOUT)

# logger.level = Logger::WARN 

logger.debug("this is a debug message ")
logger.fatal("this is a fatal message ")
logger.warn("this is a warning message ")
logger.error("this is a error")
logger.info("this is a info message")