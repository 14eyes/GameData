require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010206_TriggerIn = class("Q4010206_TriggerIn", GadgetActorProxy)
Q4010206_TriggerIn.defaultAlias = "Q4010206_TriggerIn"
local Q40102ClientConfig = require("Quest/Client/Q40102ClientConfig")

local this
local subIDs = Q40102ClientConfig.SubIDs
local npcs = Q40102ClientConfig.Npcs
local points = Q40102ClientConfig.Points
local datas = Q40102ClientConfig.Datas

function Q4010206_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010206_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010206_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40102"):RequestInteraction(npcs.Npc1064Data.alias)
    this:DestroySelf()
end

function Q4010206_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010206_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("40102"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q4010206_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010206_TriggerIn
