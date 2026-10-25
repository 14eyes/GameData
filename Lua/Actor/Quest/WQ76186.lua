require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76186 = class("Quest76186", QuestActorProxy)
Quest76186.defaultAlias = "Quest76186"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76186:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76186:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7618601"] = self.OnSubStart7618601,
        ["7618602"] = self.OnSubStart7618602,
        ["7618603"] = self.OnSubStart7618603,
        ["7618604"] = self.OnSubStart7618604
    }
end

function Quest76186:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7618601"] = self.OnSubFinish7618601,
        ["7618602"] = self.OnSubFinish7618602,
        ["7618603"] = self.OnSubFinish7618603,
        ["7618604"] = self.OnSubFinish7618604
    }
end

function Quest76186:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7618602"] = self.OnSubFailed7618602, ["7618603"] = self.OnSubFailed7618603}
end

function Quest76186:Start()
    print("Start")
end

function Quest76186:OnDestroy()
    print("OnDestroy")
end

function Quest76186:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76186:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76186:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7618603N1315Trigger")
    this:ActorDestroy("Q7618601Trigger", 76186)
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
    this:RemoveLocalGadget(70711275, "1")
    this:RemoveLocalGadget(70711275, "2")
    this:RemoveLocalGadget(73167060, "3")
    this:RemoveLocalGadget(73177013, "4")
    this:RemoveLocalGadget(73177013, "5")
    this:RemoveLocalGadget(73177012, "6")
    this:RemoveLocalGadget(73177011, "7")
    this:RemoveLocalGadget(73177011, "8")
    this:RemoveLocalGadget(73177010, "9")
    this:RecycleAllRes()
end

function Quest76186:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7618601Trigger", 76186)
end

function Quest76186:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7618601 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7618602 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest76186:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76186:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
    if actorUtils.IsAvatarSit() == true then
        local avatarPos = actorUtils.GetAvatarPos()
        local n = arg1.x - avatarPos.x
        local v = arg1.y - avatarPos.y
        local n2 = arg1.z - avatarPos.z
        local n3 = math.sqrt(n ^ 2 + v ^ 2 + n2 ^ 2)
        print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- SitDistance \239\188\154" .. n3 .. "  maxR \239\188\154" .. arg2)
        if arg2 >= n3 then
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\233\128\154\232\191\135")
            if actorUtils.GetLocalAvatarSitEntityConfigId() == arg3 or arg3 == 0 then
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                if actorUtils.GetLocalAvatarConfigId() == arg4 or arg4 == 0 then
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4)
                    return true
                else
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4 .. "  \232\166\129\230\177\130\231\154\132\232\167\146\232\137\178ID\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarConfigId())
                    return false
                end
            else
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\228\184\141\231\148\168\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarSitEntityConfigId() .. "  \232\166\129\230\177\130\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                return false
            end
        else
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135")
            return false
        end
    end
end

function Quest76186:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76186:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76186:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 1800.822, y = 224.988, z = 10415.18}, 30, 73177007, 10000133, 7618602) then
        actorUtils.FinishQuestWithParam({false}, {7618602})
    else
        if this:GetSubQuestState(7618602) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest76186:OnSubStart7618601(arg1)
    print("OnSubStart7618601")
    actorMgr:CreateActorWithPos("Q7618601Trigger", "Actor/Gadget/Q7618601Trigger", 70900002, 0, points.Q7618601Trigger.pos, points.Q7618601Trigger.rot, true, false, 3, nil, 0, 76186)
end

function Quest76186:OnSubFinish7618601(arg1)
    print("OnSubFinish7618601")
end

function Quest76186:OnSubStart7618602(arg1)
    print("OnSubStart7618602")
    this:RepeatSitCheck()
end

function Quest76186:OnSubFinish7618602(arg1)
    print("OnSubFinish7618602")
end

function Quest76186:OnSubFailed7618602(arg1)
    print("OnSubFailed7618602")
    this:RecycleAllRes()
end

function Quest76186:OnSubStart7618603(arg1)
    print("OnSubStart7618603")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7618603, 0, 40, 0.5, npcs.Npc1315.id)
end

function Quest76186:OnSubFinish7618603(arg1)
    print("OnSubFinish7618603")
    this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
end

function Quest76186:OnSubFailed7618603(arg1)
    print("OnSubFailed7618603")
    this:RecycleAllRes()
end

function Quest76186:OnSubStart7618604(arg1)
    print("OnSubStart7618604")
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:CreateLocalGadget(73167060, "1", {x = 1812.907, y = 223.691, z = 10423.66}, {x = 0, y = 287.634, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "4", {x = 1812.575, y = 223.691, z = 10424.42}, {x = 0, y = 149.874, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "5", {x = 1813.19, y = 223.691, z = 10423.76}, {x = 0, y = 345.307, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177012, "6", {x = 1813.156, y = 223.691, z = 10424.2}, {x = 0, y = 139.321, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "7", {x = 1813.77, y = 222.937, z = 10423.22}, {x = 358.15, y = 307.049, z = 358.013}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "8", {x = 1811.912, y = 222.854, z = 10425.1}, {x = 0, y = 145.352, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177010, "9", {x = 1812.823, y = 222.913, z = 10424.08}, {x = 0, y = 159.999, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73167060, "0", {x = 1812.809, y = 223.691, z = 10424.55}, {x = 0, y = 149.874, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest76186:OnSubFinish7618604(arg1)
    print("OnSubFinish7618604")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
        this:RecycleAllRes()
    end)
end

return Quest76186
