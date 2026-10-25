require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503201igger_Dungeon = class("Q1503201igger_Dungeon", GadgetActorProxy)
Q1503201igger_Dungeon.defaultAlias = "Q1503201igger_Dungeon"
local Q15032ClientConfig = require("Quest/Client/Q15032ClientConfig")

local this
local subIDs = Q15032ClientConfig.SubIDs
local datas = Q15032ClientConfig.Datas
local npcs = Q15032ClientConfig.Npcs
local points = Q15032ClientConfig.Points

function Q1503201igger_Dungeon:OnPostDataPrepare()
    print("Q1503201igger_Dungeon - OnPostDataPrepare")
    this = self
end

function Q1503201igger_Dungeon:OnPostComponentPrepare()
    print("Q1503201igger_Dungeon - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15032)
end

function Q1503201igger_Dungeon:TriggerIn()
    print("Q1503201igger_Dungeon - TriggerIn")
    actorUtils.FinishQuestID(false, 1503201)
    this:DestroySelf()
end

function Q1503201igger_Dungeon:PreTriggerIn()
    print("Q1503201igger_Dungeon - PreTriggerIn")
end

function Q1503201igger_Dungeon:LightUpTriggerIn()
    print("Q1503201igger_Dungeon - LightUpTriggerIn")
end

function Q1503201igger_Dungeon:TriggerOut()
    print("Q1503201igger_Dungeon - TriggerOut")
end

return Q1503201igger_Dungeon
