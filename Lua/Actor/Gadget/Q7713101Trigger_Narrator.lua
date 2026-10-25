require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713101Trigger_Narrator = class("Q7713101Trigger_Narrator", GadgetActorProxy)
Q7713101Trigger_Narrator.defaultAlias = "Q7713101Trigger_Narrator"
local Q77131ClientConfig = require("Quest/Client/Q77131ClientConfig")

local this
local subIDs = Q77131ClientConfig.SubIDs
local datas = Q77131ClientConfig.Datas
local npcs = Q77131ClientConfig.Npcs
local points = Q77131ClientConfig.Points

function Q7713101Trigger_Narrator:OnPostDataPrepare()
    print("Q7713101Trigger_Narrator - OnPostDataPrepare")
    this = self
end

function Q7713101Trigger_Narrator:OnPostComponentPrepare()
    print("Q7713101Trigger_Narrator - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77131)
end

function Q7713101Trigger_Narrator:TriggerIn()
    print("Q7713101Trigger_Narrator - TriggerIn")
    actorMgr:GetActor("77131"):QuestNarratorTask(datas.NarratorWithId_7713101, nil)
    this:DestroySelf()
end

function Q7713101Trigger_Narrator:PreTriggerIn()
    print("Q7713101Trigger_Narrator - PreTriggerIn")
end

function Q7713101Trigger_Narrator:LightUpTriggerIn()
    print("Q7713101Trigger_Narrator - LightUpTriggerIn")
end

function Q7713101Trigger_Narrator:TriggerOut()
    print("Q7713101Trigger_Narrator - TriggerOut")
end

return Q7713101Trigger_Narrator
