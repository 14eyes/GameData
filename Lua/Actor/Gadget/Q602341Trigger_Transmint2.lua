require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602341Trigger_Transmint2 = class("Q602341Trigger_Transmint2", GadgetActorProxy)
Q602341Trigger_Transmint2.defaultAlias = "Q602341Trigger_Transmint2"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602341Trigger_Transmint2:OnPostDataPrepare()
    print("Q602341Trigger_Transmint2 - OnPostDataPrepare")
    this = self
end

function Q602341Trigger_Transmint2:OnPostComponentPrepare()
    print("Q602341Trigger_Transmint2 - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602341Trigger_Transmint2:TriggerIn()
    print("Q602341Trigger_Transmint2 - TriggerIn")
    actorMgr:GetActor("6023"):TransmitPlayerWithQuestIdByData(602341, 1, datas.TransmitDataBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q602341Trigger_Transmint2:PreTriggerIn()
    print("Q602341Trigger_Transmint2 - PreTriggerIn")
end

function Q602341Trigger_Transmint2:LightUpTriggerIn()
    print("Q602341Trigger_Transmint2 - LightUpTriggerIn")
end

function Q602341Trigger_Transmint2:TriggerOut()
    print("Q602341Trigger_Transmint2 - TriggerOut")
end

return Q602341Trigger_Transmint2
