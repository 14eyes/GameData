require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503201Trigger_Talk = class("Q1503201Trigger_Talk", GadgetActorProxy)
Q1503201Trigger_Talk.defaultAlias = "Q1503201Trigger_Talk"
local Q15032ClientConfig = require("Quest/Client/Q15032ClientConfig")

local this
local subIDs = Q15032ClientConfig.SubIDs
local datas = Q15032ClientConfig.Datas
local npcs = Q15032ClientConfig.Npcs
local points = Q15032ClientConfig.Points

function Q1503201Trigger_Talk:OnPostDataPrepare()
    print("Q1503201Trigger_Talk - OnPostDataPrepare")
    this = self
end

function Q1503201Trigger_Talk:OnPostComponentPrepare()
    print("Q1503201Trigger_Talk - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(12, 60, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15032)
end

function Q1503201Trigger_Talk:TriggerIn()
    print("Q1503201Trigger_Talk - TriggerIn")
    actorMgr:GetActor("15032"):ShowBlackScreenWithDialogText(0.5, 1, 0, nil, nil, nil, 0, false, true)
    actorMgr:GetActor("15032"):CreateQuestNpcById(1503201, npcs.Npc1091.id, 0, false, 0)
    actorMgr:GetActor("15032"):RequestInteraction(npcs.Npc1091.alias, "", true)
    this:DestroySelf()
end

function Q1503201Trigger_Talk:PreTriggerIn()
    print("Q1503201Trigger_Talk - PreTriggerIn")
end

function Q1503201Trigger_Talk:LightUpTriggerIn()
    print("Q1503201Trigger_Talk - LightUpTriggerIn")
end

function Q1503201Trigger_Talk:TriggerOut()
    print("Q1503201Trigger_Talk - TriggerOut")
end

return Q1503201Trigger_Talk
