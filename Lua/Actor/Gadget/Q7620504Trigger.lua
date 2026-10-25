require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620504Trigger = class("Q7620504Trigger", GadgetActorProxy)
Q7620504Trigger.defaultAlias = "Q7620504Trigger"
local Q76205ClientConfig = require("Quest/Client/Q76205ClientConfig")

local this
local subIDs = Q76205ClientConfig.SubIDs
local datas = Q76205ClientConfig.Datas
local npcs = Q76205ClientConfig.Npcs
local points = Q76205ClientConfig.Points

function Q7620504Trigger:OnPostDataPrepare()
    print("Q7620504Trigger - OnPostDataPrepare")
    this = self
end

function Q7620504Trigger:OnPostComponentPrepare()
    print("Q7620504Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76205)
end

function Q7620504Trigger:TriggerIn()
    print("Q7620504Trigger - TriggerIn")
    actorMgr:GetActor("76205"):QuestNarratorTask(datas.NarratorWithId7620501, nil)
    actorUtils.FinishQuestWithParam({false}, {7620504})
    this:DestroySelf()
end

function Q7620504Trigger:PreTriggerIn()
    print("Q7620504Trigger - PreTriggerIn")
end

function Q7620504Trigger:LightUpTriggerIn()
    print("Q7620504Trigger - LightUpTriggerIn")
end

function Q7620504Trigger:TriggerOut()
    print("Q7620504Trigger - TriggerOut")
end

return Q7620504Trigger
