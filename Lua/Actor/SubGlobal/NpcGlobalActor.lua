local SubGlobalActorProxy = require("Actor/SubGlobal/SubGlobalActorProxy")

local NpcGlobalActor = class("NpcGlobalActor", SubGlobalActorProxy)
NpcGlobalActor.BubblePath = nil

function NpcGlobalActor:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.NPCGLOBAL_ACTOR, arg1, self.metaPath)
    local globalActor = actorUtils.CreateGlobalActor(actor)
    return globalActor
end

function NpcGlobalActor:DataInit()
    self.BubblePath = "Actor/Npc/Config/NpcGlobalData/GlobalBubbleConversation"
    local v = require(self.BubblePath)
    if v ~= false and v ~= true then
        for i = 1, #v do
            if v[i] ~= nil then
                local bubbleConversationData = {
                    coolDown = 0,
                    nodeIds = {},
                    lines = {},
                    coolDown = v[i].coolDown,
                    nodeIds = v[i].nodeIds,
                    lines = v[i].lines
                }

                print(" ---- AddBubbleConversationData --- " .. tostring(i))
                self.uActor:AddBubbleConversationData(bubbleConversationData)
            end
        end
    end

    local GlobalActionPointSetting = require("Actor/Npc/Config/NpcGlobalData/GlobalActionPointSetting")
    if GlobalActionPointSetting ~= false and GlobalActionPointSetting ~= true then
        for i = 1, #GlobalActionPointSetting do
            if GlobalActionPointSetting[i] ~= nil then
                self.uActor:AddActionPointData(GlobalActionPointSetting[i])
            end
        end
    end
end

function NpcGlobalActor:Start()
    self:DataInit()
end

return NpcGlobalActor
