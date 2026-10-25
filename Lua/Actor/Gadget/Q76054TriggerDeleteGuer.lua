require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76054TriggerDeleteGuer = class("Q76054TriggerDeleteGuer", GadgetActorProxy)
Q76054TriggerDeleteGuer.defaultAlias = "Q76054TriggerDeleteGuer"
local Q76054ClientConfig = require("Quest/Client/Q76054ClientConfig")

local this
local subIDs = Q76054ClientConfig.SubIDs
local datas = Q76054ClientConfig.Datas
local npcs = Q76054ClientConfig.Npcs
local points = Q76054ClientConfig.Points

function Q76054TriggerDeleteGuer:OnPostDataPrepare()
    print("Q76054TriggerDeleteGuer - OnPostDataPrepare")
    this = self
end

function Q76054TriggerDeleteGuer:OnPostComponentPrepare()
    print("Q76054TriggerDeleteGuer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76054)
end

function Q76054TriggerDeleteGuer:TriggerIn()
    print("Q76054TriggerDeleteGuer - TriggerIn")
end

function Q76054TriggerDeleteGuer:PreTriggerIn()
    print("Q76054TriggerDeleteGuer - PreTriggerIn")
end

function Q76054TriggerDeleteGuer:LightUpTriggerIn()
    print("Q76054TriggerDeleteGuer - LightUpTriggerIn")
end

function Q76054TriggerDeleteGuer:TriggerOut()
    print("Q76054TriggerDeleteGuer - TriggerOut")
    actorMgr:GetActor("76054"):DestroyQuestNpcActor(npcs.Npc1318_1.alias, 3)
    this:DestroySelf()
end

return Q76054TriggerDeleteGuer
