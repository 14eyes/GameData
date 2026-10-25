require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010024_TriggerIn = class("Q4010024_TriggerIn", GadgetActorProxy)
Q4010024_TriggerIn.defaultAlias = "Q4010024_TriggerIn"
local Q40100ClientConfig = require("Quest/Client/Q40100ClientConfig")

local this
local subIDs = Q40100ClientConfig.SubIDs
local npcs = Q40100ClientConfig.Npcs
local points = Q40100ClientConfig.Points
local datas = Q40100ClientConfig.Datas

function Q4010024_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010024_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddNpcSimpleTrigger(40100, datas.Layla_npcAliasList, LuaLogicType.LUA_LOGIC_AND, 15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4010024_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4010024)
    this:DestroySelf()
end

function Q4010024_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010024_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010024_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010024_TriggerIn
