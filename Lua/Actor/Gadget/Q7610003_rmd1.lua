require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610003_rmd1 = class("Q7610003_rmd1", GadgetActorProxy)
Q7610003_rmd1.defaultAlias = "Q7610003_rmd1"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610003_rmd1:OnPostDataPrepare()
    print("Q7610003_rmd1 - OnPostDataPrepare")
    this = self
end

function Q7610003_rmd1:OnPostComponentPrepare()
    print("Q7610003_rmd1 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610003_rmd1:TriggerIn()
    print("Q7610003_rmd1 - TriggerIn")
    actorMgr:GetActor("76100"):QuestNarratorTask(datas.NarratorWithId_761000399, nil)
    this:DestroySelf()
end

function Q7610003_rmd1:PreTriggerIn()
    print("Q7610003_rmd1 - PreTriggerIn")
end

function Q7610003_rmd1:LightUpTriggerIn()
    print("Q7610003_rmd1 - LightUpTriggerIn")
end

function Q7610003_rmd1:TriggerOut()
    print("Q7610003_rmd1 - TriggerOut")
end

return Q7610003_rmd1
