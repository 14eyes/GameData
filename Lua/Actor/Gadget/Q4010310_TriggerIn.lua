require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010310_TriggerIn = class("Q4010310_TriggerIn", GadgetActorProxy)
Q4010310_TriggerIn.defaultAlias = "Q4010310_TriggerIn"
local Q40103ClientConfig = require("Quest/Client/Q40103ClientConfig")

local this
local subIDs = Q40103ClientConfig.SubIDs
local npcs = Q40103ClientConfig.Npcs
local points = Q40103ClientConfig.Points
local datas = Q40103ClientConfig.Datas

function Q4010310_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010310_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 40, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010310_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40103"):RequestInteraction(npcs.Npc1064Data.alias)
    this:DestroySelf()
end

function Q4010310_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010310_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010310_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010310_TriggerIn
