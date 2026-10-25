require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302812_TriggerIn = class("Q302812_TriggerIn", GadgetActorProxy)
Q302812_TriggerIn.defaultAlias = "Q302812_TriggerIn"
local Q3028ClientConfig = require("Quest/Client/Q3028ClientConfig")

local this
local subIDs = Q3028ClientConfig.SubIDs
local npcs = Q3028ClientConfig.Npcs
local datas = Q3028ClientConfig.Datas

function Q302812_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302812_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(60, 100, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302812_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3028"):ShowBlackScreenWithDialogText(0.5, 3, 0, function(arg1)
        actorMgr:GetActor("3028"):ActionSafeCall(function(arg1)
            actorMgr:GetActor("3028"):TransmitPlayerWithDialogTextByQuestId(302812, 1, datas.Q302812_BlackScreenWord, 2, function(arg1)
                actorMgr:GetActor("3028"):ShowBlackScreenWithDialogText(0.5, 2, 0, nil, nil, nil, 0, false, true)
            end)
        end)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q302812_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q302812_TriggerIn
