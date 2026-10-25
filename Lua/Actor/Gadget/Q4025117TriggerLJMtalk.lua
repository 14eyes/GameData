require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4025117TriggerLJMtalk = class("Q4025117TriggerLJMtalk", GadgetActorProxy)
Q4025117TriggerLJMtalk.defaultAlias = "Q4025117TriggerLJMtalk"
local Q40251ClientConfig = require("Quest/Client/Q40251ClientConfig")

local this
local subIDs = Q40251ClientConfig.SubIDs
local datas = Q40251ClientConfig.Datas
local npcs = Q40251ClientConfig.Npcs
local points = Q40251ClientConfig.Points

function Q4025117TriggerLJMtalk:OnPostDataPrepare()
    print("Q4025117TriggerLJMtalk - OnPostDataPrepare")
    this = self
end

function Q4025117TriggerLJMtalk:OnPostComponentPrepare()
    print("Q4025117TriggerLJMtalk - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40251)
end

function Q4025117TriggerLJMtalk:TriggerIn()
    print("Q4025117TriggerLJMtalk - TriggerIn")
    actorMgr:GetActor("40251"):RequestInteraction(npcs.Npc17131.alias, "", true)
end

function Q4025117TriggerLJMtalk:PreTriggerIn()
    print("Q4025117TriggerLJMtalk - PreTriggerIn")
end

function Q4025117TriggerLJMtalk:LightUpTriggerIn()
    print("Q4025117TriggerLJMtalk - LightUpTriggerIn")
end

function Q4025117TriggerLJMtalk:TriggerOut()
    print("Q4025117TriggerLJMtalk - TriggerOut")
end

return Q4025117TriggerLJMtalk
