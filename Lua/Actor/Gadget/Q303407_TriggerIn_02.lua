require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303407_TriggerIn_02 = class("Q303407_TriggerIn_02", GadgetActorProxy)
Q303407_TriggerIn_02.defaultAlias = "Q303407_TriggerIn_02"
local Q3034ClientConfig = require("Quest/Client/Q3034ClientConfig")

local this
local subIDs = Q3034ClientConfig.SubIDs
local datas = Q3034ClientConfig.Datas
local npcs = Q3034ClientConfig.Npcs
local points = Q3034ClientConfig.Points

function Q303407_TriggerIn_02:OnPostDataPrepare()
    print("Q303407_TriggerIn_02 - OnPostDataPrepare")
    this = self
end

function Q303407_TriggerIn_02:OnPostComponentPrepare()
    print("Q303407_TriggerIn_02 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3034)
end

function Q303407_TriggerIn_02:TriggerIn()
    print("Q303407_TriggerIn_02 - TriggerIn")
    actorMgr:GetActor("3034"):PlayerEnterDungeonWithData(1979, 1314, 303413, 1, datas.PlayerEnterDungeonData_Q303407, nil, nil)
    this:DestroySelf()
end

function Q303407_TriggerIn_02:PreTriggerIn()
    print("Q303407_TriggerIn_02 - PreTriggerIn")
end

function Q303407_TriggerIn_02:LightUpTriggerIn()
    print("Q303407_TriggerIn_02 - LightUpTriggerIn")
end

function Q303407_TriggerIn_02:TriggerOut()
    print("Q303407_TriggerIn_02 - TriggerOut")
end

return Q303407_TriggerIn_02
