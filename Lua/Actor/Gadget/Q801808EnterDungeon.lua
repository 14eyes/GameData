require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801808EnterDungeon = class("Q801808EnterDungeon", GadgetActorProxy)
Q801808EnterDungeon.defaultAlias = "Q801808EnterDungeon"
local Q8018ClientConfig = require("Quest/Client/Q8018ClientConfig")

local this
local subIDs = Q8018ClientConfig.SubIDs
local datas = Q8018ClientConfig.Datas
local npcs = Q8018ClientConfig.Npcs
local points = Q8018ClientConfig.Points

function Q801808EnterDungeon:OnPostDataPrepare()
    print("Q801808EnterDungeon - OnPostDataPrepare")
    this = self
end

function Q801808EnterDungeon:OnPostComponentPrepare()
    print("Q801808EnterDungeon - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8018)
end

function Q801808EnterDungeon:TriggerIn()
    print("Q801808EnterDungeon - TriggerIn")
    actorMgr:GetActor("8018"):PlayerEnterDungeonWithData(1527, 1247, 0, 0, datas.PlayerEnterDungeonData_NoQuest, nil, nil)
    this:DestroySelf()
end

function Q801808EnterDungeon:PreTriggerIn()
    print("Q801808EnterDungeon - PreTriggerIn")
end

function Q801808EnterDungeon:LightUpTriggerIn()
    print("Q801808EnterDungeon - LightUpTriggerIn")
end

function Q801808EnterDungeon:TriggerOut()
    print("Q801808EnterDungeon - TriggerOut")
end

return Q801808EnterDungeon
