require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022015_TriggerIn = class("Q4022015_TriggerIn", GadgetActorProxy)
Q4022015_TriggerIn.defaultAlias = "Q4022015_TriggerIn"
local Q40220ClientConfig = require("Quest/Client/Q40220ClientConfig")

local this
local subIDs = Q40220ClientConfig.SubIDs
local datas = Q40220ClientConfig.Datas
local npcs = Q40220ClientConfig.Npcs
local points = Q40220ClientConfig.Points

function Q4022015_TriggerIn:OnPostDataPrepare()
    print("Q4022015_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q4022015_TriggerIn:OnPostComponentPrepare()
    print("Q4022015_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40220)
end

function Q4022015_TriggerIn:TriggerIn()
    print("Q4022015_TriggerIn - TriggerIn")
    actorMgr:GetActor("40220"):TransmitPlayerWithQuestIdByData(4022015, 1, datas.Q4022015_TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q4022015_TriggerIn:PreTriggerIn()
    print("Q4022015_TriggerIn - PreTriggerIn")
end

function Q4022015_TriggerIn:LightUpTriggerIn()
    print("Q4022015_TriggerIn - LightUpTriggerIn")
end

function Q4022015_TriggerIn:TriggerOut()
    print("Q4022015_TriggerIn - TriggerOut")
end

return Q4022015_TriggerIn
