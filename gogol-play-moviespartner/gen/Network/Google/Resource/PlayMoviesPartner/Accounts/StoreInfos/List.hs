{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PlayMoviesPartner.Accounts.StoreInfos.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List StoreInfos owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @PlaymoviespartnerAccountsStoreInfosList@.
module PlayMoviesPartner.Accounts.StoreInfos.List
    (
    -- * REST Resource
      AccountsStoreInfosListAPI

    -- * Creating a Request
    , accountsStoreInfosList
    , AccountsStoreInfosList

    -- * Request Lenses
    , asilPphNames
    , asilXgafv
    , asilStudioNames
    , asilQuotaUser
    , asilVideoIds
    , asilPrettyPrint
    , asilUploadProtocol
    , asilPp
    , asilAccessToken
    , asilUploadType
    , asilCountries
    , asilVideoId
    , asilAccountId
    , asilBearerToken
    , asilKey
    , asilName
    , asilPageToken
    , asilOauthToken
    , asilPageSize
    , asilFields
    , asilCallback
    , asilAlt
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

-- | A resource alias for @PlaymoviespartnerAccountsStoreInfosList@ which the
-- 'AccountsStoreInfosList' request conforms to.
type AccountsStoreInfosListAPI =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "storeInfos" :>
             QueryParams "pphNames" Text :>
               QueryParams "studioNames" Text :>
                 QueryParams "videoIds" Text :>
                   QueryParams "countries" Text :>
                     QueryParam "videoId" Text :>
                       QueryParam "name" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" Int32 :>
                             Get '[JSON] ListStoreInfosResponse

-- | List StoreInfos owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
--
-- /See:/ 'accountsStoreInfosList' smart constructor.
data AccountsStoreInfosList = AccountsStoreInfosList
    { _asilPphNames       :: !(Maybe Text)
    , _asilXgafv          :: !(Maybe Text)
    , _asilStudioNames    :: !(Maybe Text)
    , _asilQuotaUser      :: !(Maybe Text)
    , _asilVideoIds       :: !(Maybe Text)
    , _asilPrettyPrint    :: !Bool
    , _asilUploadProtocol :: !(Maybe Text)
    , _asilPp             :: !Bool
    , _asilAccessToken    :: !(Maybe Text)
    , _asilUploadType     :: !(Maybe Text)
    , _asilCountries      :: !(Maybe Text)
    , _asilVideoId        :: !(Maybe Text)
    , _asilAccountId      :: !Text
    , _asilBearerToken    :: !(Maybe Text)
    , _asilKey            :: !(Maybe Text)
    , _asilName           :: !(Maybe Text)
    , _asilPageToken      :: !(Maybe Text)
    , _asilOauthToken     :: !(Maybe Text)
    , _asilPageSize       :: !(Maybe Int32)
    , _asilFields         :: !(Maybe Text)
    , _asilCallback       :: !(Maybe Text)
    , _asilAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsStoreInfosList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asilPphNames'
--
-- * 'asilXgafv'
--
-- * 'asilStudioNames'
--
-- * 'asilQuotaUser'
--
-- * 'asilVideoIds'
--
-- * 'asilPrettyPrint'
--
-- * 'asilUploadProtocol'
--
-- * 'asilPp'
--
-- * 'asilAccessToken'
--
-- * 'asilUploadType'
--
-- * 'asilCountries'
--
-- * 'asilVideoId'
--
-- * 'asilAccountId'
--
-- * 'asilBearerToken'
--
-- * 'asilKey'
--
-- * 'asilName'
--
-- * 'asilPageToken'
--
-- * 'asilOauthToken'
--
-- * 'asilPageSize'
--
-- * 'asilFields'
--
-- * 'asilCallback'
--
-- * 'asilAlt'
accountsStoreInfosList
    :: Text -- ^ 'accountId'
    -> AccountsStoreInfosList
accountsStoreInfosList pAsilAccountId_ =
    AccountsStoreInfosList
    { _asilPphNames = Nothing
    , _asilXgafv = Nothing
    , _asilStudioNames = Nothing
    , _asilQuotaUser = Nothing
    , _asilVideoIds = Nothing
    , _asilPrettyPrint = True
    , _asilUploadProtocol = Nothing
    , _asilPp = True
    , _asilAccessToken = Nothing
    , _asilUploadType = Nothing
    , _asilCountries = Nothing
    , _asilVideoId = Nothing
    , _asilAccountId = pAsilAccountId_
    , _asilBearerToken = Nothing
    , _asilKey = Nothing
    , _asilName = Nothing
    , _asilPageToken = Nothing
    , _asilOauthToken = Nothing
    , _asilPageSize = Nothing
    , _asilFields = Nothing
    , _asilCallback = Nothing
    , _asilAlt = "json"
    }

-- | See _List methods rules_ for info about this field.
asilPphNames :: Lens' AccountsStoreInfosList' (Maybe Text)
asilPphNames
  = lens _asilPphNames (\ s a -> s{_asilPphNames = a})

-- | V1 error format.
asilXgafv :: Lens' AccountsStoreInfosList' (Maybe Text)
asilXgafv
  = lens _asilXgafv (\ s a -> s{_asilXgafv = a})

-- | See _List methods rules_ for info about this field.
asilStudioNames :: Lens' AccountsStoreInfosList' (Maybe Text)
asilStudioNames
  = lens _asilStudioNames
      (\ s a -> s{_asilStudioNames = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
asilQuotaUser :: Lens' AccountsStoreInfosList' (Maybe Text)
asilQuotaUser
  = lens _asilQuotaUser
      (\ s a -> s{_asilQuotaUser = a})

-- | Filter StoreInfos that match any of the given \`video_id\`s.
asilVideoIds :: Lens' AccountsStoreInfosList' (Maybe Text)
asilVideoIds
  = lens _asilVideoIds (\ s a -> s{_asilVideoIds = a})

-- | Returns response with indentations and line breaks.
asilPrettyPrint :: Lens' AccountsStoreInfosList' Bool
asilPrettyPrint
  = lens _asilPrettyPrint
      (\ s a -> s{_asilPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asilUploadProtocol :: Lens' AccountsStoreInfosList' (Maybe Text)
asilUploadProtocol
  = lens _asilUploadProtocol
      (\ s a -> s{_asilUploadProtocol = a})

-- | Pretty-print response.
asilPp :: Lens' AccountsStoreInfosList' Bool
asilPp = lens _asilPp (\ s a -> s{_asilPp = a})

-- | OAuth access token.
asilAccessToken :: Lens' AccountsStoreInfosList' (Maybe Text)
asilAccessToken
  = lens _asilAccessToken
      (\ s a -> s{_asilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asilUploadType :: Lens' AccountsStoreInfosList' (Maybe Text)
asilUploadType
  = lens _asilUploadType
      (\ s a -> s{_asilUploadType = a})

-- | Filter StoreInfos that match (case-insensitive) any of the given country
-- codes, using the \"ISO 3166-1 alpha-2\" format (examples: \"US\",
-- \"us\", \"Us\").
asilCountries :: Lens' AccountsStoreInfosList' (Maybe Text)
asilCountries
  = lens _asilCountries
      (\ s a -> s{_asilCountries = a})

-- | Filter StoreInfos that match a given \`video_id\`. NOTE: this field is
-- deprecated and will be removed on V2; \`video_ids\` should be used
-- instead.
asilVideoId :: Lens' AccountsStoreInfosList' (Maybe Text)
asilVideoId
  = lens _asilVideoId (\ s a -> s{_asilVideoId = a})

-- | REQUIRED. See _General rules_ for more information about this field.
asilAccountId :: Lens' AccountsStoreInfosList' Text
asilAccountId
  = lens _asilAccountId
      (\ s a -> s{_asilAccountId = a})

-- | OAuth bearer token.
asilBearerToken :: Lens' AccountsStoreInfosList' (Maybe Text)
asilBearerToken
  = lens _asilBearerToken
      (\ s a -> s{_asilBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asilKey :: Lens' AccountsStoreInfosList' (Maybe Text)
asilKey = lens _asilKey (\ s a -> s{_asilKey = a})

-- | Filter StoreInfos that match a case-insensitive substring of the default
-- name.
asilName :: Lens' AccountsStoreInfosList' (Maybe Text)
asilName = lens _asilName (\ s a -> s{_asilName = a})

-- | See _List methods rules_ for info about this field.
asilPageToken :: Lens' AccountsStoreInfosList' (Maybe Text)
asilPageToken
  = lens _asilPageToken
      (\ s a -> s{_asilPageToken = a})

-- | OAuth 2.0 token for the current user.
asilOauthToken :: Lens' AccountsStoreInfosList' (Maybe Text)
asilOauthToken
  = lens _asilOauthToken
      (\ s a -> s{_asilOauthToken = a})

-- | See _List methods rules_ for info about this field.
asilPageSize :: Lens' AccountsStoreInfosList' (Maybe Int32)
asilPageSize
  = lens _asilPageSize (\ s a -> s{_asilPageSize = a})

-- | Selector specifying which fields to include in a partial response.
asilFields :: Lens' AccountsStoreInfosList' (Maybe Text)
asilFields
  = lens _asilFields (\ s a -> s{_asilFields = a})

-- | JSONP
asilCallback :: Lens' AccountsStoreInfosList' (Maybe Text)
asilCallback
  = lens _asilCallback (\ s a -> s{_asilCallback = a})

-- | Data format for response.
asilAlt :: Lens' AccountsStoreInfosList' Text
asilAlt = lens _asilAlt (\ s a -> s{_asilAlt = a})

instance GoogleRequest AccountsStoreInfosList' where
        type Rs AccountsStoreInfosList' =
             ListStoreInfosResponse
        request
          = requestWithRoute defReq playMoviesPartnerURL
        requestWithRoute r u AccountsStoreInfosList{..}
          = go _asilPphNames _asilXgafv _asilStudioNames
              _asilQuotaUser
              _asilVideoIds
              _asilPrettyPrint
              _asilUploadProtocol
              _asilPp
              _asilAccessToken
              _asilUploadType
              _asilCountries
              _asilVideoId
              _asilAccountId
              _asilBearerToken
              _asilKey
              _asilName
              _asilPageToken
              _asilOauthToken
              _asilPageSize
              _asilFields
              _asilCallback
              _asilAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsStoreInfosListAPI)
                      r
                      u