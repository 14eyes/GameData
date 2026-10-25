require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76060TriggerDeleteGuer = class("Q76060TriggerDeleteGuer", GadgetActorProxy)
Q76060TriggerDeleteGuer.defaultAlias = "Q76060TriggerDeleteGuer"
local Q76060ClientConfig = require("Quest/Client/Q76060ClientConfig")

local this
local subIDs = Q76060ClientConfig.SubIDs
local datas = Q76060ClientConfig.Datas
local npcs = Q76060ClientConfig.Npcs
local points = Q76060ClientConfig.Points

function Q76060TriggerDeleteGuer:OnPostDataPrepare()
    print("Q76060TriggerDeleteGuer - OnPostDataPrepare")
    this = self
end

function Q76060TriggerDeleteGuer:OnPostComponentPrepare()
    print("Q76060TriggerDeleteGuer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76060)
end

function Q76060TriggerDeleteGuer:TriggerIn()
    print("Q76060TriggerDeleteGuer - TriggerIn")
end

function Q76060TriggerDeleteGuer:PreTriggerIn()
    print("Q76060TriggerDeleteGuer - PreTriggerIn")
end

function Q76060TriggerDeleteGuer:LightUpTriggerIn()
    print("Q76060TriggerDeleteGuer - LightUpTriggerIn")
end

function Q76060TriggerDeleteGuer:TriggerOut()
    print("Q76060TriggerDeleteGuer - TriggerOut")
    actorMgr:GetActor("76060"):DestroyQuestNpcActor(npcs.Npc1318.alias, 3)
    this:DestroySelf()
end

return Q76060TriggerDeleteGuer
