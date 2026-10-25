require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q503404Kaiche = class("Q503404Kaiche", GadgetActorProxy)
Q503404Kaiche.defaultAlias = "Q503404Kaiche"
local Q5034ClientConfig = require("Quest/Client/Q5034ClientConfig")

local this
local subIDs = Q5034ClientConfig.SubIDs
local datas = Q5034ClientConfig.Datas
local npcs = Q5034ClientConfig.Npcs
local points = Q5034ClientConfig.Points

function Q503404Kaiche:OnPostDataPrepare()
    print("Q503404Kaiche - OnPostDataPrepare")
    this = self
end

function Q503404Kaiche:OnPostComponentPrepare()
    print("Q503404Kaiche - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5034)
end

function Q503404Kaiche:TriggerIn()
    print("Q503404Kaiche - TriggerIn")
    actorMgr:GetActor("5034"):QuestNarratorTask(datas.Luodikaiche, nil)
    this:DestroySelf()
end

function Q503404Kaiche:PreTriggerIn()
    print("Q503404Kaiche - PreTriggerIn")
    globalActor:ChangeDay24Time(17, true)
end

function Q503404Kaiche:LightUpTriggerIn()
    print("Q503404Kaiche - LightUpTriggerIn")
end

function Q503404Kaiche:TriggerOut()
    print("Q503404Kaiche - TriggerOut")
end

return Q503404Kaiche
