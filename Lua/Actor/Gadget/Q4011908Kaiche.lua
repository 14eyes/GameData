require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011908Kaiche = class("Q4011908Kaiche", GadgetActorProxy)
Q4011908Kaiche.defaultAlias = "Q4011908Kaiche"
local Q40119ClientConfig = require("Quest/Client/Q40119ClientConfig")

local this
local subIDs = Q40119ClientConfig.SubIDs
local npcs = Q40119ClientConfig.Npcs
local points = Q40119ClientConfig.Points
local datas = Q40119ClientConfig.Datas

function Q4011908Kaiche:OnPostDataPrepare()
    print("[MainId: 40119][Trigger: Q4011908Kaiche] OnPostDataPrepare")
    this = self
    this = self
end

function Q4011908Kaiche:OnPostComponentPrepare()
    print("[MainId: 40119][Trigger: Q4011908Kaiche] OnPostComponentPrepare")
    this:AddCombinedSimpleTrigger(datas.targetDataList, LuaLogicType.LUA_LOGIC_OR, true, 20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4011908Kaiche:TriggerIn()
    print("[MainId: 40119][Trigger: Q4011908Kaiche] TriggerIn")
    print("kaiche")
    actorMgr:GetActor("40119"):NarratorOnlyTaskByData(datas.NarratorWithId)
    this:DestroySelf()
end

function Q4011908Kaiche:PreTriggerIn()
    print("[MainId: 40119][Trigger: Q4011908Kaiche] PreTriggerIn")
end

function Q4011908Kaiche:LightUpTriggerIn()
    print("[MainId: 40119][Trigger: Q4011908Kaiche] LightUpTriggerIn")
end

function Q4011908Kaiche:TriggerOut()
    print("[MainId: 40119][Trigger: Q4011908Kaiche] TriggerOut")
end

return Q4011908Kaiche
