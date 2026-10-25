require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76182 = class("Quest76182", QuestActorProxy)
Quest76182.defaultAlias = "Quest76182"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76182:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76182:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7618201"] = self.OnSubStart7618201,
        ["7618202"] = self.OnSubStart7618202,
        ["7618203"] = self.OnSubStart7618203,
        ["7618204"] = self.OnSubStart7618204
    }
end

function Quest76182:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7618201"] = self.OnSubFinish7618201,
        ["7618202"] = self.OnSubFinish7618202,
        ["7618203"] = self.OnSubFinish7618203,
        ["7618204"] = self.OnSubFinish7618204
    }
end

function Quest76182:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7618202"] = self.OnSubFailed7618202, ["7618203"] = self.OnSubFailed7618203}
end

function Quest76182:Start()
    print("Start")
end

function Quest76182:OnDestroy()
    print("OnDestroy")
end

function Quest76182:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76182:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76182:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7618203N1318Trigger")
    this:ActorDestroy("Q7618201Trigger", 76182)
    this:SafeDestroyQuestNpc(npcs.Npc1318_1.alias, 3)
    this:RemoveLocalGadget(73177010, "0")
    this:RemoveLocalGadget(73177011, "1")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177035, "3")
    this:RemoveLocalGadget(73167060, "4")
    this:RemoveLocalGadget(73167060, "5")
    this:RecycleAllRes()
end

function Quest76182:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7618201Trigger", 76182)
end

function Quest76182:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7618201 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7618202 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    else
        if false then
        end
    end
end

function Quest76182:ActorDestroy(arg1, arg2)
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

function Quest76182:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
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

function Quest76182:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76182:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76182:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 2657.092, y = 334.922, z = 4659.848}, 30, 73177007, 10000133, 7618202) then
        actorUtils.FinishQuestWithParam({false}, {7618202})
    else
        if this:GetSubQuestState(7618202) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest76182:OnSubStart7618201(arg1)
    print("OnSubStart7618201")
    actorMgr:CreateActorWithPos("Q7618201Trigger", "Actor/Gadget/Q7618201Trigger", 70900002, 0, points.Q7618201Trigger.pos, points.Q7618201Trigger.rot, true, false, 3, nil, 0, 76182)
end

function Quest76182:OnSubFinish7618201(arg1)
    print("OnSubFinish7618201")
end

function Quest76182:OnSubStart7618202(arg1)
    print("OnSubStart7618202")
    this:RepeatSitCheck()
end

function Quest76182:OnSubFinish7618202(arg1)
    print("OnSubFinish7618202")
end

function Quest76182:OnSubFailed7618202(arg1)
    print("OnSubFailed7618202")
    this:RecycleAllRes()
end

function Quest76182:OnSubStart7618203(arg1)
    print("OnSubStart7618203")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7618203, 0, 40, 0.5, npcs.Npc1318_1.id)
end

function Quest76182:OnSubFinish7618203(arg1)
    print("OnSubFinish7618203")
    this:NpcDestroyImmediately(3, npcs.Npc1318_1.alias)
end

function Quest76182:OnSubFailed7618203(arg1)
    print("OnSubFailed7618203")
    this:RecycleAllRes()
end

function Quest76182:OnSubStart7618204(arg1)
    print("OnSubStart7618204")
    this:CreateQuestNpc(arg1, npcs.Npc1318_1.id, 0, false, 0)
    this:CreateLocalGadget(73177010, "0", {x = 2657.431, y = 335.938, z = 4662.637}, {x = 0, y = 280, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "1", {x = 2658.384, y = 335.938, z = 4662.469}, {x = 0, y = 280, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = 2656.352, y = 335.938, z = 4662.828}, {x = 0, y = 95.413, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177041, "3", {x = 2657.416, y = 336.71, z = 4662.602}, {x = 0, y = 280, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73167060, "4", {x = 2657.057, y = 336.702, z = 4662.704}, {x = 0, y = 280, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73167060, "5", {x = 2657.785, y = 336.72, z = 4662.575}, {x = 0, y = 280, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest76182:OnSubFinish7618204(arg1)
    print("OnSubFinish7618204")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc1318_1.alias)
        this:RecycleAllRes()
    end)
end

return Quest76182
