{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.SQL.Users.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing user in a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLUsersUpdate@.
module Network.Google.Resource.SQL.Users.Update
    (
    -- * REST Resource
      UsersUpdateResource

    -- * Creating a Request
    , usersUpdate'
    , UsersUpdate'

    -- * Request Lenses
    , uuQuotaUser
    , uuPrettyPrint
    , uuProject
    , uuUserIP
    , uuUser
    , uuKey
    , uuName
    , uuHost
    , uuOAuthToken
    , uuFields
    , uuInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLUsersUpdate@ which the
-- 'UsersUpdate'' request conforms to.
type UsersUpdateResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "users" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "name" Text :>
                         QueryParam "host" Text :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] User :> Put '[JSON] Operation

-- | Updates an existing user in a Cloud SQL instance.
--
-- /See:/ 'usersUpdate'' smart constructor.
data UsersUpdate' = UsersUpdate'
    { _uuQuotaUser   :: !(Maybe Text)
    , _uuPrettyPrint :: !Bool
    , _uuProject     :: !Text
    , _uuUserIP      :: !(Maybe Text)
    , _uuUser        :: !User
    , _uuKey         :: !(Maybe Key)
    , _uuName        :: !Text
    , _uuHost        :: !Text
    , _uuOAuthToken  :: !(Maybe OAuthToken)
    , _uuFields      :: !(Maybe Text)
    , _uuInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuQuotaUser'
--
-- * 'uuPrettyPrint'
--
-- * 'uuProject'
--
-- * 'uuUserIP'
--
-- * 'uuUser'
--
-- * 'uuKey'
--
-- * 'uuName'
--
-- * 'uuHost'
--
-- * 'uuOAuthToken'
--
-- * 'uuFields'
--
-- * 'uuInstance'
usersUpdate'
    :: Text -- ^ 'project'
    -> User -- ^ 'User'
    -> Text -- ^ 'name'
    -> Text -- ^ 'host'
    -> Text -- ^ 'instance'
    -> UsersUpdate'
usersUpdate' pUuProject_ pUuUser_ pUuName_ pUuHost_ pUuInstance_ =
    UsersUpdate'
    { _uuQuotaUser = Nothing
    , _uuPrettyPrint = True
    , _uuProject = pUuProject_
    , _uuUserIP = Nothing
    , _uuUser = pUuUser_
    , _uuKey = Nothing
    , _uuName = pUuName_
    , _uuHost = pUuHost_
    , _uuOAuthToken = Nothing
    , _uuFields = Nothing
    , _uuInstance = pUuInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uuQuotaUser :: Lens' UsersUpdate' (Maybe Text)
uuQuotaUser
  = lens _uuQuotaUser (\ s a -> s{_uuQuotaUser = a})

-- | Returns response with indentations and line breaks.
uuPrettyPrint :: Lens' UsersUpdate' Bool
uuPrettyPrint
  = lens _uuPrettyPrint
      (\ s a -> s{_uuPrettyPrint = a})

-- | Project ID of the project that contains the instance.
uuProject :: Lens' UsersUpdate' Text
uuProject
  = lens _uuProject (\ s a -> s{_uuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uuUserIP :: Lens' UsersUpdate' (Maybe Text)
uuUserIP = lens _uuUserIP (\ s a -> s{_uuUserIP = a})

-- | Multipart request metadata.
uuUser :: Lens' UsersUpdate' User
uuUser = lens _uuUser (\ s a -> s{_uuUser = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uuKey :: Lens' UsersUpdate' (Maybe Key)
uuKey = lens _uuKey (\ s a -> s{_uuKey = a})

-- | Name of the user in the instance.
uuName :: Lens' UsersUpdate' Text
uuName = lens _uuName (\ s a -> s{_uuName = a})

-- | Host of the user in the instance.
uuHost :: Lens' UsersUpdate' Text
uuHost = lens _uuHost (\ s a -> s{_uuHost = a})

-- | OAuth 2.0 token for the current user.
uuOAuthToken :: Lens' UsersUpdate' (Maybe OAuthToken)
uuOAuthToken
  = lens _uuOAuthToken (\ s a -> s{_uuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uuFields :: Lens' UsersUpdate' (Maybe Text)
uuFields = lens _uuFields (\ s a -> s{_uuFields = a})

-- | Database instance ID. This does not include the project ID.
uuInstance :: Lens' UsersUpdate' Text
uuInstance
  = lens _uuInstance (\ s a -> s{_uuInstance = a})

instance GoogleAuth UsersUpdate' where
        authKey = uuKey . _Just
        authToken = uuOAuthToken . _Just

instance GoogleRequest UsersUpdate' where
        type Rs UsersUpdate' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u UsersUpdate'{..}
          = go _uuQuotaUser (Just _uuPrettyPrint) _uuProject
              _uuUserIP
              _uuKey
              (Just _uuName)
              (Just _uuHost)
              _uuOAuthToken
              _uuFields
              _uuInstance
              (Just AltJSON)
              _uuUser
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersUpdateResource)
                      r
                      u