require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010406_TriggerIn = class("Q4010406_TriggerIn", GadgetActorProxy)
Q4010406_TriggerIn.defaultAlias = "Q4010406_TriggerIn"
local Q40104ClientConfig = require("Quest/Client/Q40104ClientConfig")

local this
local subIDs = Q40104ClientConfig.SubIDs
local npcs = Q40104ClientConfig.Npcs
local points = Q40104ClientConfig.Points
local datas = Q40104ClientConfig.Datas

function Q4010406_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010406_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010406_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40104"):RequestInteraction(npcs.Npc1053Data.alias)
    this:DestroySelf()
end

function Q4010406_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010406_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010406_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010406_TriggerIn
