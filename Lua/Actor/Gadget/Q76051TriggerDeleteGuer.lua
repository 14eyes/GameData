require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76051TriggerDeleteGuer = class("Q76051TriggerDeleteGuer", GadgetActorProxy)
Q76051TriggerDeleteGuer.defaultAlias = "Q76051TriggerDeleteGuer"
local Q76051ClientConfig = require("Quest/Client/Q76051ClientConfig")

local this
local subIDs = Q76051ClientConfig.SubIDs
local datas = Q76051ClientConfig.Datas
local npcs = Q76051ClientConfig.Npcs
local points = Q76051ClientConfig.Points

function Q76051TriggerDeleteGuer:OnPostDataPrepare()
    print("Q76051TriggerDeleteGuer - OnPostDataPrepare")
    this = self
end

function Q76051TriggerDeleteGuer:OnPostComponentPrepare()
    print("Q76051TriggerDeleteGuer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76051)
end

function Q76051TriggerDeleteGuer:TriggerIn()
    print("Q76051TriggerDeleteGuer - TriggerIn")
end

function Q76051TriggerDeleteGuer:PreTriggerIn()
    print("Q76051TriggerDeleteGuer - PreTriggerIn")
end

function Q76051TriggerDeleteGuer:LightUpTriggerIn()
    print("Q76051TriggerDeleteGuer - LightUpTriggerIn")
end

function Q76051TriggerDeleteGuer:TriggerOut()
    print("Q76051TriggerDeleteGuer - TriggerOut")
    actorMgr:GetActor("76051"):DestroyQuestNpcActor(npcs.Npc1318.alias, 3)
    this:DestroySelf()
end

return Q76051TriggerDeleteGuer
