require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614211Trigger_rmd = class("Q7614211Trigger_rmd", GadgetActorProxy)
Q7614211Trigger_rmd.defaultAlias = "Q7614211Trigger_rmd"
local Q76142ClientConfig = require("Quest/Client/Q76142ClientConfig")

local this
local subIDs = Q76142ClientConfig.SubIDs
local datas = Q76142ClientConfig.Datas
local npcs = Q76142ClientConfig.Npcs
local points = Q76142ClientConfig.Points

function Q7614211Trigger_rmd:OnPostDataPrepare()
    print("Q7614211Trigger_rmd - OnPostDataPrepare")
    this = self
end

function Q7614211Trigger_rmd:OnPostComponentPrepare()
    print("Q7614211Trigger_rmd - OnPostComponentPrepare")
    this:AddComponentTrigger(5.669503, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76142)
end

function Q7614211Trigger_rmd:TriggerIn()
    print("Q7614211Trigger_rmd - TriggerIn")
    actorMgr:GetActor("76142"):QuestNarratorTask(datas.NarratorWithId_761429903, nil)
    this:DestroySelf()
end

function Q7614211Trigger_rmd:PreTriggerIn()
    print("Q7614211Trigger_rmd - PreTriggerIn")
end

function Q7614211Trigger_rmd:LightUpTriggerIn()
    print("Q7614211Trigger_rmd - LightUpTriggerIn")
end

function Q7614211Trigger_rmd:TriggerOut()
    print("Q7614211Trigger_rmd - TriggerOut")
end

return Q7614211Trigger_rmd
