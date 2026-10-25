require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503102Trigger = class("Q1503102Trigger", GadgetActorProxy)
Q1503102Trigger.defaultAlias = "Q1503102Trigger"
local Q15031ClientConfig = require("Quest/Client/Q15031ClientConfig")

local this
local subIDs = Q15031ClientConfig.SubIDs
local npcs = Q15031ClientConfig.Npcs
local points = Q15031ClientConfig.Points

function Q1503102Trigger:OnPostDataPrepare()
    print("Q1503102Trigger - OnPostDataPrepare")
    this = self
end

function Q1503102Trigger:OnPostComponentPrepare()
    print("Q1503102Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "LQ15032_5_5_VaresaQuest", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 15031)
end

function Q1503102Trigger:TriggerIn()
    print("Q1503102Trigger - TriggerIn")
    actorMgr:GetActor("15031"):ShowBlackScreenWithDialogText(0.5, 1, 0, nil, nil, nil, 0, false, true)
    actorMgr:GetActor("15031"):CreateQuestNpcById(1503102, npcs.Npc1098.id, 0, false, 0)
    actorMgr:GetActor("15031"):RequestInteraction(npcs.Npc1098.alias, "", true)
    this:DestroySelf()
end

function Q1503102Trigger:PreTriggerIn()
    print("Q1503102Trigger - PreTriggerIn")
end

function Q1503102Trigger:LightUpTriggerIn()
    print("Q1503102Trigger - LightUpTriggerIn")
end

function Q1503102Trigger:TriggerOut()
    print("Q1503102Trigger - TriggerOut")
end

return Q1503102Trigger
