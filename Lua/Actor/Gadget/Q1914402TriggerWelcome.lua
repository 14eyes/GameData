require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914402TriggerWelcome = class("Q1914402TriggerWelcome", GadgetActorProxy)
Q1914402TriggerWelcome.defaultAlias = "Q1914402TriggerWelcome"
local Q19144ClientConfig = require("Quest/Client/Q19144ClientConfig")

local subIDs = Q19144ClientConfig.SubIDs
local npcs = Q19144ClientConfig.Npcs
local datas = Q19144ClientConfig.Datas

function Q1914402TriggerWelcome:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914402TriggerWelcome:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914402TriggerWelcome:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19144"):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 19144)
    self:DestroySelf()
end

function Q1914402TriggerWelcome:TriggerOut()
    print("TriggerOut")
end

return Q1914402TriggerWelcome
