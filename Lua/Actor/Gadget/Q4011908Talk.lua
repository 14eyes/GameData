require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011908Talk = class("Q4011908Talk", GadgetActorProxy)
Q4011908Talk.defaultAlias = "Q4011908Talk"
local Q40119ClientConfig = require("Quest/Client/Q40119ClientConfig")

local this
local subIDs = Q40119ClientConfig.SubIDs
local npcs = Q40119ClientConfig.Npcs
local points = Q40119ClientConfig.Points
local datas = Q40119ClientConfig.Datas

function Q4011908Talk:OnPostDataPrepare()
    print("[MainId: 40119][Trigger: Q4011908Talk] OnPostDataPrepare")
    this = self
    this = self
end

function Q4011908Talk:OnPostComponentPrepare()
    print("[MainId: 40119][Trigger: Q4011908Talk] OnPostComponentPrepare")
    this:AddCombinedSimpleTrigger(datas.targetDataList, LuaLogicType.LUA_LOGIC_OR, true, 20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4011908Talk:TriggerIn(arg1)
    print("[MainId: 40119][Trigger: Q4011908Talk] TriggerIn")
    print("[MainId: 40119][Trigger: Q4011908Talk] TriggerIn")
    if 0 <= arg1 then
        if arg1 <= #datas.targetDataList then
            if arg1 == 0 then
                print("data:All")
            else
                local targetData = datas.targetDataList[arg1]
                print("data:" .. tostring(targetData.configId))
                local interInfo = self:MakeInterInfo("MovingTarget0", targetData)
                print(interInfo)
                local actor = actorMgr:GetActor("40119")
                self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
                    local actor = actorMgr:GetActor("40119")
                    actor:CreateQuestNpcById(4011908, npcs.Npc2605Data.id, 0)
                    actor:RequestInteraction(npcs.Npc2605Data.alias, interInfo)
                    this:DestroySelf()
                end, nil, nil, "", false, true)
            end
        end
    end
end

function Q4011908Talk:PreTriggerIn()
    print("[MainId: 40119][Trigger: Q4011908Talk] PreTriggerIn")
end

function Q4011908Talk:LightUpTriggerIn()
    print("[MainId: 40119][Trigger: Q4011908Talk] LightUpTriggerIn")
end

function Q4011908Talk:TriggerOut()
    print("[MainId: 40119][Trigger: Q4011908Talk] TriggerOut")
end

return Q4011908Talk
