require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700804DreamIn = class("Q700804DreamIn", GadgetActorProxy)
Q700804DreamIn.defaultAlias = "Q700804DreamIn"
local Q7008ClientConfig = require("Quest/Client/Q7008ClientConfig")

local this
local subIDs = Q7008ClientConfig.SubIDs
local datas = Q7008ClientConfig.Datas
local npcs = Q7008ClientConfig.Npcs
local points = Q7008ClientConfig.Points

function Q700804DreamIn:OnPostDataPrepare()
    print("Q700804DreamIn - OnPostDataPrepare")
    this = self
end

function Q700804DreamIn:OnPostComponentPrepare()
    print("Q700804DreamIn - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7008)
end

function Q700804DreamIn:TriggerIn()
    print("Q700804DreamIn - TriggerIn")
end

function Q700804DreamIn:PreTriggerIn()
    print("Q700804DreamIn - PreTriggerIn")
end

function Q700804DreamIn:LightUpTriggerIn()
    print("Q700804DreamIn - LightUpTriggerIn")
    actorMgr:GetActor("7008"):TransmitPlayerWithQuestIdByData(700804, 1, datas.TransmitDataWithDream, nil, nil, nil)
    this:DestroySelf()
end

function Q700804DreamIn:TriggerOut()
    print("Q700804DreamIn - TriggerOut")
end

return Q700804DreamIn
