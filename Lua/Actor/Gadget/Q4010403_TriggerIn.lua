require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010403_TriggerIn = class("Q4010403_TriggerIn", GadgetActorProxy)
Q4010403_TriggerIn.defaultAlias = "Q4010403_TriggerIn"
local Q40104ClientConfig = require("Quest/Client/Q40104ClientConfig")

local this
local subIDs = Q40104ClientConfig.SubIDs
local npcs = Q40104ClientConfig.Npcs
local points = Q40104ClientConfig.Points
local datas = Q40104ClientConfig.Datas

function Q4010403_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010403_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 10, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010403_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40104"):RequestInteraction(npcs.Npc1050Data.alias)
    this:DestroySelf()
end

function Q4010403_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010403_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010403_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010403_TriggerIn
