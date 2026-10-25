require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020103Trigger = class("Q4020103Trigger", GadgetActorProxy)
Q4020103Trigger.defaultAlias = "Q4020103Trigger"
local Q40201ClientConfig = require("Quest/Client/Q40201ClientConfig")

local this
local subIDs = Q40201ClientConfig.SubIDs
local datas = Q40201ClientConfig.Datas
local npcs = Q40201ClientConfig.Npcs
local points = Q40201ClientConfig.Points

function Q4020103Trigger:OnPostDataPrepare()
    print("Q4020103Trigger - OnPostDataPrepare")
    this = self
end

function Q4020103Trigger:OnPostComponentPrepare()
    print("Q4020103Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40201)
end

function Q4020103Trigger:TriggerIn()
    print("Q4020103Trigger - TriggerIn")
    actorMgr:GetActor("40201"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("40201"):CreateQuestNpcById(4020103, npcs.Npc1048.id, 0, false, 0)
        actorMgr:GetActor("40201"):RequestInteraction(npcs.Npc1048.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q4020103Trigger:PreTriggerIn()
    print("Q4020103Trigger - PreTriggerIn")
end

function Q4020103Trigger:LightUpTriggerIn()
    print("Q4020103Trigger - LightUpTriggerIn")
end

function Q4020103Trigger:TriggerOut()
    print("Q4020103Trigger - TriggerOut")
end

return Q4020103Trigger
