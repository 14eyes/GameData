require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503205gger_save = class("Q1503205gger_save", GadgetActorProxy)
Q1503205gger_save.defaultAlias = "Q1503205gger_save"
local Q15032ClientConfig = require("Quest/Client/Q15032ClientConfig")

local this
local subIDs = Q15032ClientConfig.SubIDs
local datas = Q15032ClientConfig.Datas
local npcs = Q15032ClientConfig.Npcs
local points = Q15032ClientConfig.Points

function Q1503205gger_save:OnPostDataPrepare()
    print("Q1503205gger_save - OnPostDataPrepare")
    this = self
end

function Q1503205gger_save:OnPostComponentPrepare()
    print("Q1503205gger_save - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15032)
end

function Q1503205gger_save:TriggerIn()
    print("Q1503205gger_save - TriggerIn")
    actorMgr:GetActor("15032"):TransmitPlayerWithQuestIdByData(1503205, 4, datas.TransmitData1503205, nil, nil, nil)
    this:DestroySelf()
end

function Q1503205gger_save:PreTriggerIn()
    print("Q1503205gger_save - PreTriggerIn")
end

function Q1503205gger_save:LightUpTriggerIn()
    print("Q1503205gger_save - LightUpTriggerIn")
end

function Q1503205gger_save:TriggerOut()
    print("Q1503205gger_save - TriggerOut")
end

return Q1503205gger_save
