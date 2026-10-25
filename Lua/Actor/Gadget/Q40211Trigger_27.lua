require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_27 = class("Q40211Trigger_27", GadgetActorProxy)
Q40211Trigger_27.defaultAlias = "Q40211Trigger_27"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_27:OnPostDataPrepare()
    print("Q40211Trigger_27 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_27:OnPostComponentPrepare()
    print("Q40211Trigger_27 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_27:TriggerIn()
    print("Q40211Trigger_27 - TriggerIn")
    if actorMgr:GetActor("40211"):GetQuestVar(4021144, 1) == 0 then
        actorMgr:GetActor("40211"):TransmitPlayerWithQuestIdByData(4021144, 2, datas.TransmitData_2, nil, nil, nil)
    end

    this:DestroySelf()
end

function Q40211Trigger_27:PreTriggerIn()
    print("Q40211Trigger_27 - PreTriggerIn")
end

function Q40211Trigger_27:LightUpTriggerIn()
    print("Q40211Trigger_27 - LightUpTriggerIn")
end

function Q40211Trigger_27:TriggerOut()
    print("Q40211Trigger_27 - TriggerOut")
end

return Q40211Trigger_27
