require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010025_TriggerIn = class("Q4010025_TriggerIn", GadgetActorProxy)
Q4010025_TriggerIn.defaultAlias = "Q4010025_TriggerIn"
local Q40100ClientConfig = require("Quest/Client/Q40100ClientConfig")

local this
local subIDs = Q40100ClientConfig.SubIDs
local npcs = Q40100ClientConfig.Npcs
local points = Q40100ClientConfig.Points
local datas = Q40100ClientConfig.Datas

function Q4010025_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010025_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010025_TriggerIn:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40100")
    actor:SetLocalGadgetState(70711020, "1", 202)
    actor:RequestInteraction(npcs.Npc1052Data.alias)
    this:DestroySelf()
end

function Q4010025_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010025_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010025_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010025_TriggerIn
