require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77650Trigger_10 = class("Q77650Trigger_10", GadgetActorProxy)
Q77650Trigger_10.defaultAlias = "Q77650Trigger_10"
local Q77650ClientConfig = require("Quest/Client/Q77650ClientConfig")

local this
local subIDs = Q77650ClientConfig.SubIDs
local datas = Q77650ClientConfig.Datas
local npcs = Q77650ClientConfig.Npcs
local points = Q77650ClientConfig.Points

function Q77650Trigger_10:OnPostDataPrepare()
    print("Q77650Trigger_10 - OnPostDataPrepare")
    this = self
end

function Q77650Trigger_10:OnPostComponentPrepare()
    print("Q77650Trigger_10 - OnPostComponentPrepare")
    this:AddComponentTrigger(26, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77650)
end

function Q77650Trigger_10:TriggerIn()
    print("Q77650Trigger_10 - TriggerIn")
    actorMgr:GetActor("77650"):ShowBlackScreenWithDialogText(0, 0, 0, function(arg1)
        actorMgr:GetActor("77650"):CancelStoryByQuest(147765001)
        actorMgr:GetActor("77650"):RequestInteraction(npcs.Npc16927.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q77650Trigger_10:PreTriggerIn()
    print("Q77650Trigger_10 - PreTriggerIn")
end

function Q77650Trigger_10:LightUpTriggerIn()
    print("Q77650Trigger_10 - LightUpTriggerIn")
end

function Q77650Trigger_10:TriggerOut()
    print("Q77650Trigger_10 - TriggerOut")
end

return Q77650Trigger_10
