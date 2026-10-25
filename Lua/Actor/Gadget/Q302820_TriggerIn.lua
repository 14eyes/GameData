require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302820_TriggerIn = class("Q302820_TriggerIn", GadgetActorProxy)
Q302820_TriggerIn.defaultAlias = "Q302820_TriggerIn"
local Q3028ClientConfig = require("Quest/Client/Q3028ClientConfig")

local this
local subIDs = Q3028ClientConfig.SubIDs
local npcs = Q3028ClientConfig.Npcs
local datas = Q3028ClientConfig.Datas

function Q302820_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302820_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(150, 50, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302820_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3028"):TransmitPlayerWithDialogTextByQuestId(302820, 1, nil, 0, nil, function(arg1)
        actorMgr:GetActor("3028"):ShowBlackScreenWithDialogText(0.5, 2, 0, nil, nil, nil, 0, false, true)
    end)

    this:DestroySelf()
end

function Q302820_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q302820_TriggerIn
