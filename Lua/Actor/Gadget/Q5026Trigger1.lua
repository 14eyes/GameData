require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger1 = class("Q5026Trigger1", GadgetActorProxy)
Q5026Trigger1.defaultAlias = "Q5026Trigger1"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger1:OnPostDataPrepare()
    print("Q5026Trigger1 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger1:OnPostComponentPrepare()
    print("Q5026Trigger1 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(25, 25, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger1:TriggerIn()
    print("Q5026Trigger1 - TriggerIn")
    actorMgr:GetActor("5026"):QuestNarratorTask(datas.NarratorWithId_502602, nil)
    actorUtils.FinishQuestID(false, 502601)
    this:DestroySelf()
end

function Q5026Trigger1:PreTriggerIn()
    print("Q5026Trigger1 - PreTriggerIn")
end

function Q5026Trigger1:LightUpTriggerIn()
    print("Q5026Trigger1 - LightUpTriggerIn")
end

function Q5026Trigger1:TriggerOut()
    print("Q5026Trigger1 - TriggerOut")
end

return Q5026Trigger1
