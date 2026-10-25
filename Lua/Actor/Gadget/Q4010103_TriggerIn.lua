require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010103_TriggerIn = class("Q4010103_TriggerIn", GadgetActorProxy)
Q4010103_TriggerIn.defaultAlias = "Q4010103_TriggerIn"
local Q40101ClientConfig = require("Quest/Client/Q40101ClientConfig")

local this
local subIDs = Q40101ClientConfig.SubIDs
local npcs = Q40101ClientConfig.Npcs
local points = Q40101ClientConfig.Points
local datas = Q40101ClientConfig.Datas

function Q4010103_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010103_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010103_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40101"):RequestInteraction(npcs.Npc13161Data.alias)
    this:DestroySelf()
end

function Q4010103_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010103_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010103_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010103_TriggerIn
