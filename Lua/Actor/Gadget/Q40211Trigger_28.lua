require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_28 = class("Q40211Trigger_28", GadgetActorProxy)
Q40211Trigger_28.defaultAlias = "Q40211Trigger_28"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_28:OnPostDataPrepare()
    print("Q40211Trigger_28 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_28:OnPostComponentPrepare()
    print("Q40211Trigger_28 - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_28:TriggerIn()
    print("Q40211Trigger_28 - TriggerIn")
    if actorMgr:GetActor("40211"):GetQuestVar(4021145, 2) == 0 then
        actorMgr:GetActor("40211"):TransmitPlayerWithQuestIdByData(4021145, 1, datas.TransmitData_1, nil, nil, nil)
    end

    this:DestroySelf()
end

function Q40211Trigger_28:PreTriggerIn()
    print("Q40211Trigger_28 - PreTriggerIn")
end

function Q40211Trigger_28:LightUpTriggerIn()
    print("Q40211Trigger_28 - LightUpTriggerIn")
end

function Q40211Trigger_28:TriggerOut()
    print("Q40211Trigger_28 - TriggerOut")
end

return Q40211Trigger_28
