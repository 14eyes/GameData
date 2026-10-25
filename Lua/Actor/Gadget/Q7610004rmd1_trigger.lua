require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610004rmd1_trigger = class("Q7610004rmd1_trigger", GadgetActorProxy)
Q7610004rmd1_trigger.defaultAlias = "Q7610004rmd1_trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610004rmd1_trigger:OnPostDataPrepare()
    print("Q7610004rmd1_trigger - OnPostDataPrepare")
    this = self
end

function Q7610004rmd1_trigger:OnPostComponentPrepare()
    print("Q7610004rmd1_trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610004rmd1_trigger:TriggerIn()
    print("Q7610004rmd1_trigger - TriggerIn")
    actorMgr:GetActor("76100"):QuestNarratorTask(datas.NarratorWithId_761000499, nil)
    this:DestroySelf()
end

function Q7610004rmd1_trigger:PreTriggerIn()
    print("Q7610004rmd1_trigger - PreTriggerIn")
end

function Q7610004rmd1_trigger:LightUpTriggerIn()
    print("Q7610004rmd1_trigger - LightUpTriggerIn")
end

function Q7610004rmd1_trigger:TriggerOut()
    print("Q7610004rmd1_trigger - TriggerOut")
end

return Q7610004rmd1_trigger
