require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600304Kaiche = class("Q600304Kaiche", GadgetActorProxy)
Q600304Kaiche.defaultAlias = "Q600304Kaiche"
local Q6003ClientConfig = require("Quest/Client/Q6003ClientConfig")

local this
local subIDs = Q6003ClientConfig.SubIDs
local datas = Q6003ClientConfig.Datas
local npcs = Q6003ClientConfig.Npcs
local points = Q6003ClientConfig.Points

function Q600304Kaiche:OnPostDataPrepare()
    print("Q600304Kaiche - OnPostDataPrepare")
    this = self
end

function Q600304Kaiche:OnPostComponentPrepare()
    print("Q600304Kaiche - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6003)
end

function Q600304Kaiche:TriggerIn()
    print("Q600304Kaiche - TriggerIn")
    actorMgr:GetActor("6003"):QuestNarratorTask(datas.Q600304Kaiche, nil)
    this:DestroySelf()
end

function Q600304Kaiche:PreTriggerIn()
    print("Q600304Kaiche - PreTriggerIn")
end

function Q600304Kaiche:LightUpTriggerIn()
    print("Q600304Kaiche - LightUpTriggerIn")
end

function Q600304Kaiche:TriggerOut()
    print("Q600304Kaiche - TriggerOut")
end

return Q600304Kaiche
