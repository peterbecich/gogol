{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Datasets.TestIAMPermissions
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns permissions that a caller has on the specified resource. See
-- Testing Permissions for more information.
--
-- /See:/ < Genomics API Reference> for @GenomicsDatasetsTestIAMPermissions@.
module Network.Google.Resource.Genomics.Datasets.TestIAMPermissions
    (
    -- * REST Resource
      DatasetsTestIAMPermissionsResource

    -- * Creating a Request
    , datasetsTestIAMPermissions'
    , DatasetsTestIAMPermissions'

    -- * Request Lenses
    , dtipXgafv
    , dtipQuotaUser
    , dtipPrettyPrint
    , dtipUploadProtocol
    , dtipPp
    , dtipAccessToken
    , dtipUploadType
    , dtipPayload
    , dtipBearerToken
    , dtipKey
    , dtipResource
    , dtipOAuthToken
    , dtipFields
    , dtipCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsTestIAMPermissions@ method which the
-- 'DatasetsTestIAMPermissions'' request conforms to.
type DatasetsTestIAMPermissionsResource =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] TestIAMPermissionsRequest :>
                                     Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. See
-- Testing Permissions for more information.
--
-- /See:/ 'datasetsTestIAMPermissions'' smart constructor.
data DatasetsTestIAMPermissions' = DatasetsTestIAMPermissions'
    { _dtipXgafv          :: !(Maybe Text)
    , _dtipQuotaUser      :: !(Maybe Text)
    , _dtipPrettyPrint    :: !Bool
    , _dtipUploadProtocol :: !(Maybe Text)
    , _dtipPp             :: !Bool
    , _dtipAccessToken    :: !(Maybe Text)
    , _dtipUploadType     :: !(Maybe Text)
    , _dtipPayload        :: !TestIAMPermissionsRequest
    , _dtipBearerToken    :: !(Maybe Text)
    , _dtipKey            :: !(Maybe AuthKey)
    , _dtipResource       :: !Text
    , _dtipOAuthToken     :: !(Maybe OAuthToken)
    , _dtipFields         :: !(Maybe Text)
    , _dtipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsTestIAMPermissions'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtipXgafv'
--
-- * 'dtipQuotaUser'
--
-- * 'dtipPrettyPrint'
--
-- * 'dtipUploadProtocol'
--
-- * 'dtipPp'
--
-- * 'dtipAccessToken'
--
-- * 'dtipUploadType'
--
-- * 'dtipPayload'
--
-- * 'dtipBearerToken'
--
-- * 'dtipKey'
--
-- * 'dtipResource'
--
-- * 'dtipOAuthToken'
--
-- * 'dtipFields'
--
-- * 'dtipCallback'
datasetsTestIAMPermissions'
    :: TestIAMPermissionsRequest -- ^ 'payload'
    -> Text -- ^ 'resource'
    -> DatasetsTestIAMPermissions'
datasetsTestIAMPermissions' pDtipPayload_ pDtipResource_ =
    DatasetsTestIAMPermissions'
    { _dtipXgafv = Nothing
    , _dtipQuotaUser = Nothing
    , _dtipPrettyPrint = True
    , _dtipUploadProtocol = Nothing
    , _dtipPp = True
    , _dtipAccessToken = Nothing
    , _dtipUploadType = Nothing
    , _dtipPayload = pDtipPayload_
    , _dtipBearerToken = Nothing
    , _dtipKey = Nothing
    , _dtipResource = pDtipResource_
    , _dtipOAuthToken = Nothing
    , _dtipFields = Nothing
    , _dtipCallback = Nothing
    }

-- | V1 error format.
dtipXgafv :: Lens' DatasetsTestIAMPermissions' (Maybe Text)
dtipXgafv
  = lens _dtipXgafv (\ s a -> s{_dtipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
dtipQuotaUser :: Lens' DatasetsTestIAMPermissions' (Maybe Text)
dtipQuotaUser
  = lens _dtipQuotaUser
      (\ s a -> s{_dtipQuotaUser = a})

-- | Returns response with indentations and line breaks.
dtipPrettyPrint :: Lens' DatasetsTestIAMPermissions' Bool
dtipPrettyPrint
  = lens _dtipPrettyPrint
      (\ s a -> s{_dtipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dtipUploadProtocol :: Lens' DatasetsTestIAMPermissions' (Maybe Text)
dtipUploadProtocol
  = lens _dtipUploadProtocol
      (\ s a -> s{_dtipUploadProtocol = a})

-- | Pretty-print response.
dtipPp :: Lens' DatasetsTestIAMPermissions' Bool
dtipPp = lens _dtipPp (\ s a -> s{_dtipPp = a})

-- | OAuth access token.
dtipAccessToken :: Lens' DatasetsTestIAMPermissions' (Maybe Text)
dtipAccessToken
  = lens _dtipAccessToken
      (\ s a -> s{_dtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dtipUploadType :: Lens' DatasetsTestIAMPermissions' (Maybe Text)
dtipUploadType
  = lens _dtipUploadType
      (\ s a -> s{_dtipUploadType = a})

-- | Multipart request metadata.
dtipPayload :: Lens' DatasetsTestIAMPermissions' TestIAMPermissionsRequest
dtipPayload
  = lens _dtipPayload (\ s a -> s{_dtipPayload = a})

-- | OAuth bearer token.
dtipBearerToken :: Lens' DatasetsTestIAMPermissions' (Maybe Text)
dtipBearerToken
  = lens _dtipBearerToken
      (\ s a -> s{_dtipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dtipKey :: Lens' DatasetsTestIAMPermissions' (Maybe AuthKey)
dtipKey = lens _dtipKey (\ s a -> s{_dtipKey = a})

-- | REQUIRED: The resource for which policy is being specified. Format is
-- \`datasets\/\`.
dtipResource :: Lens' DatasetsTestIAMPermissions' Text
dtipResource
  = lens _dtipResource (\ s a -> s{_dtipResource = a})

-- | OAuth 2.0 token for the current user.
dtipOAuthToken :: Lens' DatasetsTestIAMPermissions' (Maybe OAuthToken)
dtipOAuthToken
  = lens _dtipOAuthToken
      (\ s a -> s{_dtipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dtipFields :: Lens' DatasetsTestIAMPermissions' (Maybe Text)
dtipFields
  = lens _dtipFields (\ s a -> s{_dtipFields = a})

-- | JSONP
dtipCallback :: Lens' DatasetsTestIAMPermissions' (Maybe Text)
dtipCallback
  = lens _dtipCallback (\ s a -> s{_dtipCallback = a})

instance GoogleAuth DatasetsTestIAMPermissions' where
        _AuthKey = dtipKey . _Just
        _AuthToken = dtipOAuthToken . _Just

instance GoogleRequest DatasetsTestIAMPermissions'
         where
        type Rs DatasetsTestIAMPermissions' =
             TestIAMPermissionsResponse
        request = requestWith genomicsRequest
        requestWith rq DatasetsTestIAMPermissions'{..}
          = go _dtipResource _dtipXgafv _dtipUploadProtocol
              (Just _dtipPp)
              _dtipAccessToken
              _dtipUploadType
              _dtipBearerToken
              _dtipCallback
              _dtipQuotaUser
              (Just _dtipPrettyPrint)
              _dtipFields
              _dtipKey
              _dtipOAuthToken
              (Just AltJSON)
              _dtipPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DatasetsTestIAMPermissionsResource)
                      rq
