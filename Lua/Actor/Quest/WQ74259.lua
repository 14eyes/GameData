require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74259 = class("Quest74259", QuestActorProxy)
Quest74259.defaultAlias = "Quest74259"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest74259:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74259:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7425901"] = self.OnSubStart7425901,
        ["7425902"] = self.OnSubStart7425902,
        ["7425903"] = self.OnSubStart7425903
    }
end

function Quest74259:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7425901"] = self.OnSubFinish7425901,
        ["7425902"] = self.OnSubFinish7425902,
        ["7425903"] = self.OnSubFinish7425903
    }
end

function Quest74259:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7425902"] = self.OnSubFailed7425902, ["7425903"] = self.OnSubFailed7425903}
end

function Quest74259:Start()
    print("Start")
end

function Quest74259:OnDestroy()
    print("OnDestroy")
end

function Quest74259:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74259:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74259:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7425903N16920Trigger")
    this:ActorDestroy("Q7425901Trigger", 74259)
    this:SafeDestroyQuestNpc(npcs.Npc16920.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16922.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16923.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16924_1.alias, 3)
    this:RecycleAllRes()
end

function Quest74259:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7425901Trigger", 74259)
end

function Quest74259:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7425901 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7425902 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest74259:ActorDestroy(arg1, arg2)
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

function Quest74259:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
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

function Quest74259:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest74259:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74259:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 2658.658, y = 334.922, z = 4654.793}, 30, 73177007, 10000133, 7425902) then
        actorUtils.FinishQuestWithParam({false}, {7425902})
    else
        if this:GetSubQuestState(7425902) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest74259:OnSubStart7425901(arg1)
    print("OnSubStart7425901")
    actorMgr:CreateActorWithPos("Q7425901Trigger", "Actor/Gadget/Q7425901Trigger", 70900002, 0, points.Q7425901Trigger.pos, points.Q7425901Trigger.rot, true, false, 3, nil, 0, 74259)
end

function Quest74259:OnSubFinish7425901(arg1)
    print("OnSubFinish7425901")
end

function Quest74259:OnSubStart7425902(arg1)
    print("OnSubStart7425902")
    this:RepeatSitCheck()
end

function Quest74259:OnSubFinish7425902(arg1)
    print("OnSubFinish7425902")
    this:ShowBlackScreenWithDialogText(0, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74259:OnSubFailed7425902(arg1)
    print("OnSubFailed7425902")
    this:RecycleAllRes()
end

function Quest74259:OnSubStart7425903(arg1)
    print("OnSubStart7425903")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7425903, 0, 40, 0.5, npcs.Npc16920.id)
    this:CreateQuestNpc(arg1, npcs.Npc16922.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16923.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16924_1.id, 0, false, 0)
    this:CreateLocalGadget(73177012, "10", {x = 2657.473, y = 336.715, z = 4662.394}, {x = 0, y = 308.496, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "8", {x = 2657.142, y = 336.715, z = 4662.377}, {x = 0, y = 61.107, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "7", {x = 2657.527, y = 336.715, z = 4663.039}, {x = 0, y = 186.064, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "6", {x = 2657.905, y = 336.715, z = 4662.535}, {x = 0, y = 102.126, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "3", {x = 2658.556, y = 335.938, z = 4662.392}, {x = 0, y = 282.636, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = 2656.513, y = 335.937, z = 4662.166}, {x = 0, y = 70, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177010, "1", {x = 2657.499, y = 335.938, z = 4662.624}, {x = 0, y = 102.482, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest74259:OnSubFinish7425903(arg1)
    print("OnSubFinish7425903")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc16920.alias)
        this:NpcDestroyImmediately(3, npcs.Npc16922.alias)
        this:NpcDestroyImmediately(3, npcs.Npc16923.alias)
        this:NpcDestroyImmediately(3, npcs.Npc16924_1.alias)
        this:RecycleAllRes()
    end)
end

function Quest74259:OnSubFailed7425903(arg1)
    print("OnSubFailed7425903")
    this:RecycleAllRes()
end

return Quest74259
