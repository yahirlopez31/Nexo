class Config:
    SECRET_KEY  = 'FDTYOLKFTsadknasko8546@dskmfkosdfoisdnfoinsdokfno'
    DEBUG       = True
    
class DevelopmentConfig(Config):
    MYSQL_HOST      = 'localhost'
    MYSQL_USER      = 'root'
    MYSQL_PASSWORD  = 'mysql'
    MYSQL_DB        = 'nexo'

config = {
    'development': DevelopmentConfig
}