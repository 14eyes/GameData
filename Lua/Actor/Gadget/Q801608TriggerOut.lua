require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801608TriggerOut = class("Q801608TriggerOut", GadgetActorProxy)
Q801608TriggerOut.defaultAlias = "Q801608TriggerOut"
local Q8016ClientConfig = require("Quest/Client/Q8016ClientConfig")

local this
local subIDs = Q8016ClientConfig.SubIDs
local datas = Q8016ClientConfig.Datas
local npcs = Q8016ClientConfig.Npcs
local points = Q8016ClientConfig.Points

function Q801608TriggerOut:OnPostDataPrepare()
    print("Q801608TriggerOut - OnPostDataPrepare")
    this = self
end

function Q801608TriggerOut:OnPostComponentPrepare()
    print("Q801608TriggerOut - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8016)
end

function Q801608TriggerOut:TriggerIn()
    print("Q801608TriggerOut - TriggerIn")
    actorMgr:GetActor("8016"):TransmitPlayerWithQuestIdByData(801608, 1, datas.BlackTransmitData, nil, nil, nil)
end

function Q801608TriggerOut:PreTriggerIn()
    print("Q801608TriggerOut - PreTriggerIn")
end

function Q801608TriggerOut:LightUpTriggerIn()
    print("Q801608TriggerOut - LightUpTriggerIn")
end

function Q801608TriggerOut:TriggerOut()
    print("Q801608TriggerOut - TriggerOut")
end

return Q801608TriggerOut
