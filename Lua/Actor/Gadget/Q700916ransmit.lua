require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700916ransmit = class("Q700916ransmit", GadgetActorProxy)
Q700916ransmit.defaultAlias = "Q700916ransmit"
local Q7009ClientConfig = require("Quest/Client/Q7009ClientConfig")

local this
local subIDs = Q7009ClientConfig.SubIDs
local datas = Q7009ClientConfig.Datas
local npcs = Q7009ClientConfig.Npcs
local points = Q7009ClientConfig.Points

function Q700916ransmit:OnPostDataPrepare()
    print("Q700916ransmit - OnPostDataPrepare")
    this = self
end

function Q700916ransmit:OnPostComponentPrepare()
    print("Q700916ransmit - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7009)
end

function Q700916ransmit:TriggerIn()
    print("Q700916ransmit - TriggerIn")
end

function Q700916ransmit:PreTriggerIn()
    print("Q700916ransmit - PreTriggerIn")
end

function Q700916ransmit:LightUpTriggerIn()
    print("Q700916ransmit - LightUpTriggerIn")
    actorMgr:GetActor("7009"):TransmitPlayerWithQuestIdByData(700916, 1, datas.TransmitDataWithBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q700916ransmit:TriggerOut()
    print("Q700916ransmit - TriggerOut")
end

return Q700916ransmit
