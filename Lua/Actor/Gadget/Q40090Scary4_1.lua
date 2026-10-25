require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40090Scary4_1 = class("Q40090Scary4_1", GadgetActorProxy)
Q40090Scary4_1.defaultAlias = "Q40090Scary4_1"
local Q40090ClientConfig = require("Quest/Client/Q40090ClientConfig")

local this
local subIDs = Q40090ClientConfig.SubIDs
local npcs = Q40090ClientConfig.Npcs
local datas = Q40090ClientConfig.Datas

function Q40090Scary4_1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40090Scary4_1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddNpcSimpleTrigger(40090, {npcs.Npc1033Data.alias, npcs.Npc1035Data.alias, npcs.Npc1040Data.alias}, LuaLogicType.LUA_LOGIC_OR, 6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40090Scary4_1:TriggerIn()
    print("TriggerIn")
    actorMgr:CreateActorWithPos("Q40090Scary4", "Actor/Gadget/Q40090Scary4", 70900002, 0, {x = -2728.542, y = 231.555, z = -4473.229}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:GetActor("40090"):CreateLocalGadget(70290745, "1", datas.ShadowPos, datas.ShadowRot, 3, nil, nil, 0, false)
    this:DestroySelf()
end

function Q40090Scary4_1:PreTriggerIn()
    print("PreTriggerIn")
end

function Q40090Scary4_1:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q40090Scary4_1:TriggerOut()
    print("TriggerOut")
end

return Q40090Scary4_1
