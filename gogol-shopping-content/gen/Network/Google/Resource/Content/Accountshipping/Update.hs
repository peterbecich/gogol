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
-- Module      : Network.Google.Resource.Content.Accountshipping.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the shipping settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountshippingUpdate@.
module Network.Google.Resource.Content.Accountshipping.Update
    (
    -- * REST Resource
      AccountshippingUpdateResource

    -- * Creating a Request
    , accountshippingUpdate'
    , AccountshippingUpdate'

    -- * Request Lenses
    , auuQuotaUser
    , auuMerchantId
    , auuPrettyPrint
    , auuUserIP
    , auuPayload
    , auuAccountId
    , auuKey
    , auuOAuthToken
    , auuDryRun
    , auuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountshippingUpdate@ method which the
-- 'AccountshippingUpdate'' request conforms to.
type AccountshippingUpdateResource =
     Capture "merchantId" Word64 :>
       "accountshipping" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AccountShipping :>
                             Put '[JSON] AccountShipping

-- | Updates the shipping settings of the account.
--
-- /See:/ 'accountshippingUpdate'' smart constructor.
data AccountshippingUpdate' = AccountshippingUpdate'
    { _auuQuotaUser   :: !(Maybe Text)
    , _auuMerchantId  :: !Word64
    , _auuPrettyPrint :: !Bool
    , _auuUserIP      :: !(Maybe Text)
    , _auuPayload     :: !AccountShipping
    , _auuAccountId   :: !Word64
    , _auuKey         :: !(Maybe AuthKey)
    , _auuOAuthToken  :: !(Maybe OAuthToken)
    , _auuDryRun      :: !(Maybe Bool)
    , _auuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auuQuotaUser'
--
-- * 'auuMerchantId'
--
-- * 'auuPrettyPrint'
--
-- * 'auuUserIP'
--
-- * 'auuPayload'
--
-- * 'auuAccountId'
--
-- * 'auuKey'
--
-- * 'auuOAuthToken'
--
-- * 'auuDryRun'
--
-- * 'auuFields'
accountshippingUpdate'
    :: Word64 -- ^ 'merchantId'
    -> AccountShipping -- ^ 'payload'
    -> Word64 -- ^ 'accountId'
    -> AccountshippingUpdate'
accountshippingUpdate' pAuuMerchantId_ pAuuPayload_ pAuuAccountId_ =
    AccountshippingUpdate'
    { _auuQuotaUser = Nothing
    , _auuMerchantId = pAuuMerchantId_
    , _auuPrettyPrint = True
    , _auuUserIP = Nothing
    , _auuPayload = pAuuPayload_
    , _auuAccountId = pAuuAccountId_
    , _auuKey = Nothing
    , _auuOAuthToken = Nothing
    , _auuDryRun = Nothing
    , _auuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auuQuotaUser :: Lens' AccountshippingUpdate' (Maybe Text)
auuQuotaUser
  = lens _auuQuotaUser (\ s a -> s{_auuQuotaUser = a})

-- | The ID of the managing account.
auuMerchantId :: Lens' AccountshippingUpdate' Word64
auuMerchantId
  = lens _auuMerchantId
      (\ s a -> s{_auuMerchantId = a})

-- | Returns response with indentations and line breaks.
auuPrettyPrint :: Lens' AccountshippingUpdate' Bool
auuPrettyPrint
  = lens _auuPrettyPrint
      (\ s a -> s{_auuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auuUserIP :: Lens' AccountshippingUpdate' (Maybe Text)
auuUserIP
  = lens _auuUserIP (\ s a -> s{_auuUserIP = a})

-- | Multipart request metadata.
auuPayload :: Lens' AccountshippingUpdate' AccountShipping
auuPayload
  = lens _auuPayload (\ s a -> s{_auuPayload = a})

-- | The ID of the account for which to get\/update account shipping
-- settings.
auuAccountId :: Lens' AccountshippingUpdate' Word64
auuAccountId
  = lens _auuAccountId (\ s a -> s{_auuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auuKey :: Lens' AccountshippingUpdate' (Maybe AuthKey)
auuKey = lens _auuKey (\ s a -> s{_auuKey = a})

-- | OAuth 2.0 token for the current user.
auuOAuthToken :: Lens' AccountshippingUpdate' (Maybe OAuthToken)
auuOAuthToken
  = lens _auuOAuthToken
      (\ s a -> s{_auuOAuthToken = a})

-- | Flag to run the request in dry-run mode.
auuDryRun :: Lens' AccountshippingUpdate' (Maybe Bool)
auuDryRun
  = lens _auuDryRun (\ s a -> s{_auuDryRun = a})

-- | Selector specifying which fields to include in a partial response.
auuFields :: Lens' AccountshippingUpdate' (Maybe Text)
auuFields
  = lens _auuFields (\ s a -> s{_auuFields = a})

instance GoogleAuth AccountshippingUpdate' where
        _AuthKey = auuKey . _Just
        _AuthToken = auuOAuthToken . _Just

instance GoogleRequest AccountshippingUpdate' where
        type Rs AccountshippingUpdate' = AccountShipping
        request = requestWith shoppingContentRequest
        requestWith rq AccountshippingUpdate'{..}
          = go _auuMerchantId _auuAccountId _auuDryRun
              _auuQuotaUser
              (Just _auuPrettyPrint)
              _auuUserIP
              _auuFields
              _auuKey
              _auuOAuthToken
              (Just AltJSON)
              _auuPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountshippingUpdateResource)
                      rq
