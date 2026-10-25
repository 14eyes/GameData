require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010204_TriggerIn = class("Q4010204_TriggerIn", GadgetActorProxy)
Q4010204_TriggerIn.defaultAlias = "Q4010204_TriggerIn"
local Q40102ClientConfig = require("Quest/Client/Q40102ClientConfig")

local this
local subIDs = Q40102ClientConfig.SubIDs
local npcs = Q40102ClientConfig.Npcs
local points = Q40102ClientConfig.Points
local datas = Q40102ClientConfig.Datas

function Q4010204_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010204_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010204_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40102"):TransmitPlayerWithDialogTextByQuestId(4010204, 1, datas.DialogsId, 1)
    this:DestroySelf()
end

function Q4010204_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010204_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010204_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010204_TriggerIn
