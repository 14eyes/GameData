require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010404_TriggerIn = class("Q4010404_TriggerIn", GadgetActorProxy)
Q4010404_TriggerIn.defaultAlias = "Q4010404_TriggerIn"
local Q40104ClientConfig = require("Quest/Client/Q40104ClientConfig")

local this
local subIDs = Q40104ClientConfig.SubIDs
local npcs = Q40104ClientConfig.Npcs
local points = Q40104ClientConfig.Points
local datas = Q40104ClientConfig.Datas

function Q4010404_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010404_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(8, 10, true, {x = 0.0, y = 3.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010404_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40104"):RequestInteraction(npcs.Npc1063Data.alias)
    this:DestroySelf()
end

function Q4010404_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010404_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010404_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010404_TriggerIn
