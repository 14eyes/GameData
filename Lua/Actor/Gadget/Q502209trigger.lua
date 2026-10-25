require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502209trigger = class("Q502209trigger", GadgetActorProxy)
Q502209trigger.defaultAlias = "Q502209trigger"
local Q5022ClientConfig = require("Quest/Client/Q5022ClientConfig")

local this
local subIDs = Q5022ClientConfig.SubIDs
local datas = Q5022ClientConfig.Datas
local npcs = Q5022ClientConfig.Npcs
local points = Q5022ClientConfig.Points

function Q502209trigger:OnPostDataPrepare()
    print("Q502209trigger - OnPostDataPrepare")
    this = self
end

function Q502209trigger:OnPostComponentPrepare()
    print("Q502209trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5022)
end

function Q502209trigger:TriggerIn()
    print("Q502209trigger - TriggerIn")
    actorMgr:GetActor("5022"):TransmitPlayerWithQuestIdByData(502207, 4, datas.TransmitData_4, nil, nil, nil)
    this:DestroySelf()
end

function Q502209trigger:PreTriggerIn()
    print("Q502209trigger - PreTriggerIn")
end

function Q502209trigger:LightUpTriggerIn()
    print("Q502209trigger - LightUpTriggerIn")
end

function Q502209trigger:TriggerOut()
    print("Q502209trigger - TriggerOut")
end

return Q502209trigger
