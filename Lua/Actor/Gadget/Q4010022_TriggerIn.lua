require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010022_TriggerIn = class("Q4010022_TriggerIn", GadgetActorProxy)
Q4010022_TriggerIn.defaultAlias = "Q4010022_TriggerIn"
local Q40100ClientConfig = require("Quest/Client/Q40100ClientConfig")

local this
local subIDs = Q40100ClientConfig.SubIDs
local npcs = Q40100ClientConfig.Npcs
local points = Q40100ClientConfig.Points
local datas = Q40100ClientConfig.Datas

function Q4010022_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010022_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010022_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40100"):RequestInteraction(npcs.Npc1050Data.alias)
    this:DestroySelf()
end

function Q4010022_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010022_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010022_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010022_TriggerIn
