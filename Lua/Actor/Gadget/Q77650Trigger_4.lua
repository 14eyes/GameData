require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77650Trigger_4 = class("Q77650Trigger_4", GadgetActorProxy)
Q77650Trigger_4.defaultAlias = "Q77650Trigger_4"
local Q77650ClientConfig = require("Quest/Client/Q77650ClientConfig")

local this
local subIDs = Q77650ClientConfig.SubIDs
local datas = Q77650ClientConfig.Datas
local npcs = Q77650ClientConfig.Npcs
local points = Q77650ClientConfig.Points

function Q77650Trigger_4:OnPostDataPrepare()
    print("Q77650Trigger_4 - OnPostDataPrepare")
    this = self
end

function Q77650Trigger_4:OnPostComponentPrepare()
    print("Q77650Trigger_4 - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77650)
end

function Q77650Trigger_4:TriggerIn()
    print("Q77650Trigger_4 - TriggerIn")
    actorMgr:GetActor("77650"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("77650"):CreateQuestNpcById(7765019, 17287, 0, false, 0)
        actorMgr:GetActor("77650"):RequestInteraction(npcs.Npc17287.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q77650Trigger_4:PreTriggerIn()
    print("Q77650Trigger_4 - PreTriggerIn")
end

function Q77650Trigger_4:LightUpTriggerIn()
    print("Q77650Trigger_4 - LightUpTriggerIn")
end

function Q77650Trigger_4:TriggerOut()
    print("Q77650Trigger_4 - TriggerOut")
end

return Q77650Trigger_4
