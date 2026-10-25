require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500214Kaiche = class("Q500214Kaiche", GadgetActorProxy)
Q500214Kaiche.defaultAlias = "Q500214Kaiche"
local Q5002ClientConfig = require("Quest/Client/Q5002ClientConfig")

local this
local subIDs = Q5002ClientConfig.SubIDs
local datas = Q5002ClientConfig.Datas
local npcs = Q5002ClientConfig.Npcs
local points = Q5002ClientConfig.Points

function Q500214Kaiche:OnPostDataPrepare()
    print("Q500214Kaiche - OnPostDataPrepare")
    this = self
end

function Q500214Kaiche:OnPostComponentPrepare()
    print("Q500214Kaiche - OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5002)
end

function Q500214Kaiche:TriggerIn()
    print("Q500214Kaiche - TriggerIn")
    actorMgr:GetActor("5002"):QuestNarratorTask(datas.Q500214Kaiche, nil)
    this:DestroySelf()
end

function Q500214Kaiche:PreTriggerIn()
    print("Q500214Kaiche - PreTriggerIn")
end

function Q500214Kaiche:LightUpTriggerIn()
    print("Q500214Kaiche - LightUpTriggerIn")
end

function Q500214Kaiche:TriggerOut()
    print("Q500214Kaiche - TriggerOut")
end

return Q500214Kaiche
