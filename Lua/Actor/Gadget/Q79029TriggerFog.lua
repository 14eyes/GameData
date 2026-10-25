require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79029TriggerFog = class("Q79029TriggerFog", GadgetActorProxy)
Q79029TriggerFog.defaultAlias = "Q79029TriggerFog"
local Q79029ClientConfig = require("Quest/Client/Q79029ClientConfig")

local subIDs = Q79029ClientConfig.SubIDs
local datas = Q79029ClientConfig.Datas

function Q79029TriggerFog:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q79029TriggerFog:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCommonPolygonTrigger(1, "BigWorld_Q79029_FogArea_001", 1, false, self.TriggerIn, self.TriggerOut)
end

function Q79029TriggerFog:TriggerIn()
    print("TriggerIn")
end

function Q79029TriggerFog:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 7902904)
    self:DestroySelf()
end

return Q79029TriggerFog
