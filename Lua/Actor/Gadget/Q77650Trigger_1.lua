require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77650Trigger_1 = class("Q77650Trigger_1", GadgetActorProxy)
Q77650Trigger_1.defaultAlias = "Q77650Trigger_1"
local Q77650ClientConfig = require("Quest/Client/Q77650ClientConfig")

local this
local subIDs = Q77650ClientConfig.SubIDs
local datas = Q77650ClientConfig.Datas
local npcs = Q77650ClientConfig.Npcs
local points = Q77650ClientConfig.Points

function Q77650Trigger_1:OnPostDataPrepare()
    print("Q77650Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q77650Trigger_1:OnPostComponentPrepare()
    print("Q77650Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77650)
end

function Q77650Trigger_1:TriggerIn()
    print("Q77650Trigger_1 - TriggerIn")
    actorMgr:GetActor("77650"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("77650"):CreateQuestNpcById(7765006, 17287, 0, false, 0)
        actorMgr:GetActor("77650"):RequestInteraction(npcs.Npc17287.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q77650Trigger_1:PreTriggerIn()
    print("Q77650Trigger_1 - PreTriggerIn")
end

function Q77650Trigger_1:LightUpTriggerIn()
    print("Q77650Trigger_1 - LightUpTriggerIn")
end

function Q77650Trigger_1:TriggerOut()
    print("Q77650Trigger_1 - TriggerOut")
end

return Q77650Trigger_1
